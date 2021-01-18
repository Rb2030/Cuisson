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
            yield state.copyWith(information: Constants.emailInformation);
          } else {
            yield state.copyWith(information: '');
          }
          break;
        case 1:
          if (showInfo) {
            yield state.copyWith(information: Constants.passwordInformation);
          } else {
            yield state.copyWith(information: '');
          }
          break;
        case 2:
          if (showInfo) {
            yield state.copyWith(information: Constants.usernameInformation);
          } else {
            yield state.copyWith(information: '');
          }
          break;
        default:
      }
    }, enableButton: (e) async* {
      yield state.copyWith(
        buttonEnabled: true,
      );
    }, disableButton: (e) async* {
      yield state.copyWith(
        buttonEnabled: false,
      );
    }, emailChanged: (e) async* {
      yield state.copyWith(
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
          stateChangerField:
              'EMAIL', // Added this field to change the state, bit of a hack
          information: '');
    }, passwordChanged: (e) async* {
      yield state.copyWith(
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
          buttonText: Constants.submit,
          stateChangerField:
              'PASSWORD', // Added this field to change the state, bit of a hack
          information: '');
    }, usernameChanged: (e) async* {
      yield state.copyWith(
        username: Username(e.usernameString),
        registerFailureOrSuccessOption: none(),
      );
      Username(e.usernameString).value.fold((fail) => null, (success) {
        add(const RegisterFormEvent.enableButton());
      });
    }, usernameButtonClicked: (e) async* {
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

    // if (isEmailValid && isPasswordValid && isUsernameValid) { //TODO: This must be uncommented when wanting to authenticate the user. Currently it works!!!!
    //   yield state.copyWith( //TODO: This must be uncommented when wanting to authenticate the user. Currently it works!!!!
    //     information: '', //TODO: This must be uncommented when wanting to authenticate the user. Currently it works!!!!
    //     isSubmitting: true, //TODO: This must be uncommented when wanting to authenticate the user. Currently it works!!!!
    //     registerFailureOrSuccessOption: none(), //TODO: This must be uncommented when wanting to authenticate the user. Currently it works!!!!
    //   );

    //   registrationFailureOrSuccess = await registerCall( //TODO: This must be uncommented when wanting to authenticate the user. Currently it works!!!!
    //       emailAddress: state.emailAddress, password: state.password); //TODO: This must be uncommented when wanting to authenticate the user. Currently it works!!!!

    //   if (registrationFailureOrSuccess != null) { //TODO: This must be uncommented when wanting to authenticate the user. Currently it works!!!!
    //     registrationFailureOrSuccess.fold((failure) => null, (success) async { //TODO: This must be uncommented when wanting to authenticate the user. Currently it works!!!!
    //       uniqueUsernameCheck = //TODO: This must be uncommented when wanting to authenticate the user. Currently it works!!!!
    //           await uniqueUsernameCall(username: state.username); //TODO: This must be uncommented when wanting to authenticate the user. Currently it works!!!!
    //     });
    //   }
    // }

    // yield state.copyWith( //TODO: This must be uncommented when wanting to authenticate the user. Currently it works!!!!
    //     isSubmitting: true, //TODO: This must be uncommented when wanting to authenticate the user. Currently it works!!!!
    //     showErrorMessages: true, //TODO: This must be uncommented when wanting to authenticate the user. Currently it works!!!!
    //     registerFailureOrSuccessOption: optionOf(registrationFailureOrSuccess), //TODO: This must be uncommented when wanting to authenticate the user. Currently it works!!!!
    //     uniqueUsernameFailureOrSuccessOption: optionOf(uniqueUsernameCheck)); //TODO: This must be uncommented when wanting to authenticate the user. Currently it works!!!!
  }
}