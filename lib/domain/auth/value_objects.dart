import 'package:Cuisson/domain/core/value_objects.dart';
import 'package:Cuisson/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:Cuisson/domain/core/failures.dart';
import 'package:Cuisson/domain/core/value_objects.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    // This prevents the email constructor being called if the email isn't in the correct format
    assert(input != null);
    return EmailAddress._(//This is calling the private const below
        validateEmailAddress(input));
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    // This prevents the email constructor being called if the email isn't in the correct format
    assert(input != null);
    return Password._(//This is calling the private const below
        validatePassword(input));
  }

  const Password._(this.value);
}
