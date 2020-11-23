import 'package:Cuisson/domain/core/value_objects.dart';
import 'package:Cuisson/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:Cuisson/domain/core/failures.dart';

/// Email Address

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    // This prevents the email constructor being called if the email isn't in the correct format
    assert(input != null);
    return EmailAddress._(//This is being called by the private const below
        validateEmailAddress(input).flatMap((_) => validateStringNotEmpty(input)));
  }

  const EmailAddress._(this.value);
}

/// Password

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {

    assert(input != null);
    return Password._(
        validatePassword(input).flatMap((_) => validateStringNotEmpty(input)));
  }

  const Password._(this.value);
}

/// Username

class Username extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Username(String input) {

    assert(input != null);
    return Username._(
        validatePassword(input).flatMap((_) => validateStringNotEmpty(input)));
  }

  const Username._(this.value);
}
