part of 'register_form_bloc.dart';

@freezed
abstract class RegisterFormEvent with _$RegisterFormEvent {
  const factory RegisterFormEvent.emailChanged(String emailString) = _EmailChanged;
  const factory RegisterFormEvent.emailButtonClicked() = _EmailButtonClicked;
  const factory RegisterFormEvent.passwordChanged(String passwordString) = _PasswordChanged;
  const factory RegisterFormEvent.passwordButtonClicked() = _PasswordButtonClicked;
  const factory RegisterFormEvent.usernameChanged(String usernameString) = _UsernameChanged;
  const factory RegisterFormEvent.usernameButtonClicked() = _UsernameButtonClicked;
  const factory RegisterFormEvent.registerWithEmailAndPasswordPressed() = _RegisterWithEmailAndPasswordPressed;
}