part of 'register_form_bloc.dart';

@freezed
abstract class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState({
    @required EmailAddress emailAddress,
    @required Password password,
    @required Username username,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> registerFailureOrSuccessOption,
    @required Option<Either<AuthFailure, Unit>> uniqueUsernameFailureOrSuccessOption,

  }) = _RegisterFormState;

  factory RegisterFormState.initial() => RegisterFormState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        username: Username(''),
        showErrorMessages: false,
        isSubmitting: false,
        registerFailureOrSuccessOption: none(),
        uniqueUsernameFailureOrSuccessOption: none(),
      );
}
