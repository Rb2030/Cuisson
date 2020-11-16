//import 'package:flutter/foundation.dart';
import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.auth(AuthOrRegValueFailure<T> f, {String failedValue}) = _Auth<T>;
  //const factory ValueFailure.auth(ProfileValueFailure<T> f) = _Auth<T>;
}


@freezed
abstract class AuthOrRegValueFailure<T> with _$AuthOrRegValueFailure<T> {
  const factory AuthOrRegValueFailure.invalidEmail({
    @required T failedValue,
  }) = InvalidEmail<T>;
  const factory AuthOrRegValueFailure.invalidPassword({
    @required T failedValue,
  }) = InvalidPassword<T>;
  const factory AuthOrRegValueFailure.invalidUsername({
    @required T failedValue,
  }) = InvalidUsername<T>;
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
