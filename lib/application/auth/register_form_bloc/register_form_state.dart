part of 'register_form_bloc.dart';

@freezed
abstract class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState({
    @required bool initial,
    @required String information,
    @required EmailAddress emailAddress,
    @required Password password,
    @required Username username,
    @required String stateChangerField,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required String buttonText,
    @required bool buttonEnabled,
    @required Option<Either<AuthFailure, Unit>> registerFailureOrSuccessOption,
    @required
        Option<Either<AuthFailure, Unit>> uniqueUsernameFailureOrSuccessOption,
  }) = _RegisterFormState;

  factory RegisterFormState.initial() => RegisterFormState(
        initial: true,
        information: '',
        emailAddress: EmailAddress(''),
        password: Password(''),
        username: Username(''),
        stateChangerField: '',
        showErrorMessages: false,
        isSubmitting: false,
        buttonText: Constants.next,
        buttonEnabled: false,
        registerFailureOrSuccessOption: none(),
        uniqueUsernameFailureOrSuccessOption: none(),
  );
}
