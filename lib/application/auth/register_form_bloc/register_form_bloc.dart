import 'dart:async';

import 'package:Cuisson/domain/auth/auth_failure.dart';
import 'package:Cuisson/domain/auth/i_auth_facade.dart';
import 'package:Cuisson/domain/auth/value_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_form_event.dart';
part 'register_form_state.dart';
part 'register_form_bloc.freezed.dart';

@injectable
class RegisterFormBloc extends Bloc<RegisterFormEvent, RegisterFormState> {
  final IAuthFacade _authFacade;
  RegisterFormBloc(this._authFacade) : super(RegisterFormState.initial());

  @override
  Stream<RegisterFormState> mapEventToState(
    RegisterFormEvent event,
  ) async* {
    yield* event.map(
        emailChanged: (e) async* {
          yield state.copyWith(
            emailAddress: EmailAddress(e.emailString),
            registerFailureOrSuccessOption: none(),
          );
        },
        emailButtonClicked: (e) async* {},
        passwordChanged: (e) async* {
          yield state.copyWith(
            password: Password(e.passwordString),
            registerFailureOrSuccessOption: none(),
          );
        },
        passwordButtonClicked: (e) async* {},
        usernameChanged: (e) async* {
          yield state.copyWith(
            username: Username(e.usernameString),
            registerFailureOrSuccessOption: none(),
          );
        },
        usernameButtonClicked: (e) async* {},
        registerWithEmailAndPasswordPressed: (e) async* {
          yield* _performActionOnAuthFacadeWithEmailAndPassword(
            _authFacade.registerWithEmailAndPassword,
            _authFacade.uniqueUsernameCheck
          );
        });
  }

  Stream<RegisterFormState> _performActionOnAuthFacadeWithEmailAndPassword(
      Future<Either<AuthFailure, Unit>> Function(
              {@required EmailAddress emailAddress,
              @required Password password})
          registerCall,
      Future<Either<AuthFailure, Unit>> Function({@required Username username})
          uniqueUsernameCall) async* {
    Either<AuthFailure, Unit> registrationFailureOrSuccess;
    Either<AuthFailure, Unit> uniqueUsernameCheck;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    final isUsernameValid = state.username.isValid();

    if (isEmailValid && isPasswordValid && isUsernameValid) {
      yield state.copyWith(
        isSubmitting: true,
        registerFailureOrSuccessOption: none(),
      );

      registrationFailureOrSuccess = await registerCall(
          emailAddress: state.emailAddress, password: state.password);

      if (registrationFailureOrSuccess != null) {
         registrationFailureOrSuccess.fold((failure) => null, (success) async {
         uniqueUsernameCheck = await uniqueUsernameCall(username: state.username);
      });
      }
    }

    yield state.copyWith(
      isSubmitting: true,
      showErrorMessages: true,
      registerFailureOrSuccessOption: optionOf(registrationFailureOrSuccess),
      uniqueUsernameFailureOrSuccessOption: optionOf(uniqueUsernameCheck)
    );
  }
}
