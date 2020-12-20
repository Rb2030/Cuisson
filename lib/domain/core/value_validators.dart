import 'package:Cuisson/domain/core/failures.dart';
import 'package:dartz/dartz.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  final RegExp regExp = RegExp(pattern);

  if (input.length >= 6 && regExp.hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.authOrReg(
        AuthOrRegValueFailure.invalidEmail(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  const pattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';

  final RegExp regExp = RegExp(pattern);

  if (input.length >= 6 && regExp.hasMatch(input)) {
    return right(input);
  } else {
        return left(ValueFailure.authOrReg(
        AuthOrRegValueFailure.invalidPassword(failedValue: input)));

  }
}

Either<ValueFailure<String>, String> validateMaxStringLength(String input, int maxLength) {
  if (input.length > maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.authOrReg(
        AuthOrRegValueFailure.exceedingLength(failedValue: input)));
  }
}


Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
        return left(ValueFailure.authOrReg(
        AuthOrRegValueFailure.emptyField(failedValue: input)));

  }
}

