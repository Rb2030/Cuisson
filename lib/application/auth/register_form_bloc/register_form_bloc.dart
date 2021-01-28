import 'dart:async';

import 'package:Cuisson/application/core/global/constants/constants.dart';
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
  int currentView = 0;
  bool showInfo = false;

  RegisterFormBloc(this._authFacade) : super(RegisterFormState.initial());

  @override
  Stream<RegisterFormState> mapEventToState(
    RegisterFormEvent event,
  ) async* {
    yield* event.map(initial: (e) async* {
      yield state;
    }, informationPressed: (e) async* {
      showInfo = !showInfo;
      switch (e.currentView) {
        case 0:
          if (showInfo) {
            yield state.copyWith(initial: true, information: Constants.emailInformation, registerFailureOrSuccessOption: none());
          } else {
            yield state.copyWith(initial: true, information: '', registerFailureOrSuccessOption: none());
          }
          break;
        case 1:
          if (showInfo) {
            yield state.copyWith(initial: true, information: Constants.passwordInformation, registerFailureOrSuccessOption: none());
          } else {
            yield state.copyWith(initial: true, information: '', registerFailureOrSuccessOption: none());
          }
          break;
        case 2:
          if (showInfo) {
            yield state.copyWith(initial: true, information: Constants.usernameInformation, registerFailureOrSuccessOption: none());
          } else {
            yield state.copyWith(initial: true, information: '', registerFailureOrSuccessOption: none());
          }
          break;
        default:
      }
    }, enableButton: (e) async* {
      yield state.copyWith(
        initial: true,
        buttonEnabled: true,registerFailureOrSuccessOption: none(),
      );
    }, disableButton: (e) async* {
      yield state.copyWith(
        initial: true,
        buttonEnabled: false,registerFailureOrSuccessOption: none(),
      );
    }, emailChanged: (e) async* {
      yield state.copyWith(
        initial: true,
        emailAddress: EmailAddress(e.emailString),
        registerFailureOrSuccessOption: none(),
        uniqueUsernameFailureOrSuccessOption: none(),
      );
      EmailAddress(e.emailString).value.fold((fail) => null, (success) {
        add(const RegisterFormEvent.enableButton());
      });
    }, emailButtonClicked: (e) async* {
      currentView = 1;
      showInfo = false;
      yield state.copyWith(
        initial: true,
          stateChangerField:
              'EMAIL', // Added this field to change the state, bit of a hack
          information: '',
          registerFailureOrSuccessOption: none(),);
    }, passwordChanged: (e) async* {
      yield state.copyWith(
        initial: true,
        password: Password(e.passwordString),
        registerFailureOrSuccessOption: none(),
        uniqueUsernameFailureOrSuccessOption: none(),
      );
      Password(e.passwordString).value.fold((fail) => null, (success) {
        add(const RegisterFormEvent.enableButton());
      });
    }, passwordButtonClicked: (e) async* {
      currentView = 2;
      showInfo = false;
      yield state.copyWith(
        initial: true,
          buttonText: Constants.submit,
          stateChangerField:
              'PASSWORD', // Added this field to change the state, bit of a hack
          information: '',
          registerFailureOrSuccessOption: none(),);
    }, usernameChanged: (e) async* {
      yield state.copyWith(
        initial: true,
        username: Username(e.usernameString),
        registerFailureOrSuccessOption: none(),
      );
      Username(e.usernameString).value.fold((fail) => null, (success) {
        add(const RegisterFormEvent.enableButton());
      });
    }, submitRegisterCredentials: (e) async* {
      showInfo = false;
      add(const RegisterFormEvent.registerWithEmailAndPasswordPressed());
    }, registerWithEmailAndPasswordPressed: (e) async* {
      yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.registerWithEmailAndPassword,
          _authFacade.uniqueUsernameCheck);
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
        initial: false,
        information: '',
        isSubmitting: true,
        registerFailureOrSuccessOption: none(),
      );

      registrationFailureOrSuccess = await registerCall(
          emailAddress: state.emailAddress, password: state.password);

      if (registrationFailureOrSuccess != null) {
          yield state.copyWith(
            initial: false,
            showErrorMessages: true,
            isSubmitting: false,
            registerFailureOrSuccessOption: optionOf(registrationFailureOrSuccess),
            uniqueUsernameFailureOrSuccessOption: none(),
          );

          // uniqueUsernameCheck =
          //     await uniqueUsernameCall(username: state.username);

          // if (uniqueUsernameCheck != null) {
          //     yield state.copyWith(
          //       isSubmitting: true,
          //       showErrorMessages: true,
          //       registerFailureOrSuccessOption: none(),
          //       uniqueUsernameFailureOrSuccessOption: optionOf(uniqueUsernameCheck),
          //     );
          // }
      }
    }
  }
}
