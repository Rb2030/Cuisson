//import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.auth(AuthValueFailure<T> f) = _Auth<T>;
  //const factory ValueFailure.auth(ProfileValueFailure<T> f) = _Auth<T>;
}

@freezed
abstract class AuthValueFailure<T> with _$AuthValueFailure<T> {
  const factory AuthValueFailure.invalidEmail({
    @required T failedValue,
  }) = InvalidEmail<T>;
  const factory AuthValueFailure.invalidPassword({
    @required T failedValue,
  }) = InvalidPassword<T>;
}

// @freezed
// abstract class ProfileValueFailure<T> with _$AuthValueFailure<T> {
//   const factory ProfileValueFailure.invalidPostcode({
//     @required T failedValue,
//   }) = InvalidPostcode<T>;
//   const factory ProfileValueFailure.invalidMobileNumber({
//     @required T failedValue,
//   }) = InvalidMobileNumber<T>;
// }
