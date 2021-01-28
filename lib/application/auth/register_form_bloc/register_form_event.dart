part of 'register_form_bloc.dart';

@freezed
abstract class RegisterFormEvent with _$RegisterFormEvent {
  const factory RegisterFormEvent.initial() = _Initial;
  const factory RegisterFormEvent.enableButton() = _EnableButton;
  const factory RegisterFormEvent.disableButton() = _DisableButton;
  const factory RegisterFormEvent.informationPressed(int currentView) = _InformationPressed;
  const factory RegisterFormEvent.emailChanged(String emailString) =
      _EmailChanged;
  const factory RegisterFormEvent.emailButtonClicked({String emailString}) =
      _EmailButtonClicked;
  const factory RegisterFormEvent.passwordChanged(String passwordString) =
      _PasswordChanged;
  const factory RegisterFormEvent.passwordButtonClicked(
      {String passwordString}) = _PasswordButtonClicked;
  const factory RegisterFormEvent.usernameChanged(String usernameString) =
      _UsernameChanged;
  const factory RegisterFormEvent.submitRegisterCredentials(
      {String usernameString}) = _UsernameButtonClicked;
  const factory RegisterFormEvent.registerWithEmailAndPasswordPressed() =
      _RegisterWithEmailAndPasswordPressed;
}
