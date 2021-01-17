// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  _Auth<T> authOrReg<T>(AuthOrRegValueFailure<T> f, {String failedValue}) {
    return _Auth<T>(
      f,
      failedValue: failedValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  AuthOrRegValueFailure<T> get f;
  String get failedValue;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authOrReg(AuthOrRegValueFailure<T> f, String failedValue),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authOrReg(AuthOrRegValueFailure<T> f, String failedValue),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authOrReg(_Auth<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authOrReg(_Auth<T> value),
    @required TResult orElse(),
  });

  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({AuthOrRegValueFailure<T> f, String failedValue});

  $AuthOrRegValueFailureCopyWith<T, $Res> get f;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object f = freezed,
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      f: f == freezed ? _value.f : f as AuthOrRegValueFailure<T>,
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }

  @override
  $AuthOrRegValueFailureCopyWith<T, $Res> get f {
    if (_value.f == null) {
      return null;
    }
    return $AuthOrRegValueFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc
abstract class _$AuthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$AuthCopyWith(_Auth<T> value, $Res Function(_Auth<T>) then) =
      __$AuthCopyWithImpl<T, $Res>;
  @override
  $Res call({AuthOrRegValueFailure<T> f, String failedValue});

  @override
  $AuthOrRegValueFailureCopyWith<T, $Res> get f;
}

/// @nodoc
class __$AuthCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$AuthCopyWith<T, $Res> {
  __$AuthCopyWithImpl(_Auth<T> _value, $Res Function(_Auth<T>) _then)
      : super(_value, (v) => _then(v as _Auth<T>));

  @override
  _Auth<T> get _value => super._value as _Auth<T>;

  @override
  $Res call({
    Object f = freezed,
    Object failedValue = freezed,
  }) {
    return _then(_Auth<T>(
      f == freezed ? _value.f : f as AuthOrRegValueFailure<T>,
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$_Auth<T> with DiagnosticableTreeMixin implements _Auth<T> {
  const _$_Auth(this.f, {this.failedValue}) : assert(f != null);

  @override
  final AuthOrRegValueFailure<T> f;
  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.authOrReg(f: $f, failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.authOrReg'))
      ..add(DiagnosticsProperty('f', f))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Auth<T> &&
            (identical(other.f, f) ||
                const DeepCollectionEquality().equals(other.f, f)) &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(f) ^
      const DeepCollectionEquality().hash(failedValue);

  @override
  _$AuthCopyWith<T, _Auth<T>> get copyWith =>
      __$AuthCopyWithImpl<T, _Auth<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authOrReg(AuthOrRegValueFailure<T> f, String failedValue),
  }) {
    assert(authOrReg != null);
    return authOrReg(f, failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authOrReg(AuthOrRegValueFailure<T> f, String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authOrReg != null) {
      return authOrReg(f, failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authOrReg(_Auth<T> value),
  }) {
    assert(authOrReg != null);
    return authOrReg(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authOrReg(_Auth<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authOrReg != null) {
      return authOrReg(this);
    }
    return orElse();
  }
}

abstract class _Auth<T> implements ValueFailure<T> {
  const factory _Auth(AuthOrRegValueFailure<T> f, {String failedValue}) =
      _$_Auth<T>;

  @override
  AuthOrRegValueFailure<T> get f;
  @override
  String get failedValue;
  @override
  _$AuthCopyWith<T, _Auth<T>> get copyWith;
}

/// @nodoc
class _$AuthOrRegValueFailureTearOff {
  const _$AuthOrRegValueFailureTearOff();

// ignore: unused_element
  InvalidEmail<T> invalidEmail<T>({@required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidPassword<T> invalidPassword<T>({@required T failedValue}) {
    return InvalidPassword<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidUsername<T> invalidUsername<T>({@required T failedValue}) {
    return InvalidUsername<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ExceedingLength<T> exceedingLength<T>({@required T failedValue}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  EmptyField<T> emptyField<T>({@required T failedValue}) {
    return EmptyField<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ContainsProfanity<T> containsProfanity<T>({@required T failedValue}) {
    return ContainsProfanity<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  StringEmpty<T> stringEmpty<T>({@required T failedValue}) {
    return StringEmpty<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  StringExceedsMaxLength<T> stringExceedsMaxLength<T>(
      {@required T failedValue}) {
    return StringExceedsMaxLength<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthOrRegValueFailure = _$AuthOrRegValueFailureTearOff();

/// @nodoc
mixin _$AuthOrRegValueFailure<T> {
  T get failedValue;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPassword(T failedValue),
    @required TResult invalidUsername(T failedValue),
    @required TResult exceedingLength(T failedValue),
    @required TResult emptyField(T failedValue),
    @required TResult containsProfanity(T failedValue),
    @required TResult stringEmpty(T failedValue),
    @required TResult stringExceedsMaxLength(T failedValue),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(T failedValue),
    TResult invalidPassword(T failedValue),
    TResult invalidUsername(T failedValue),
    TResult exceedingLength(T failedValue),
    TResult emptyField(T failedValue),
    TResult containsProfanity(T failedValue),
    TResult stringEmpty(T failedValue),
    TResult stringExceedsMaxLength(T failedValue),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult emptyField(EmptyField<T> value),
    @required TResult containsProfanity(ContainsProfanity<T> value),
    @required TResult stringEmpty(StringEmpty<T> value),
    @required TResult stringExceedsMaxLength(StringExceedsMaxLength<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult emptyField(EmptyField<T> value),
    TResult containsProfanity(ContainsProfanity<T> value),
    TResult stringEmpty(StringEmpty<T> value),
    TResult stringExceedsMaxLength(StringExceedsMaxLength<T> value),
    @required TResult orElse(),
  });

  $AuthOrRegValueFailureCopyWith<T, AuthOrRegValueFailure<T>> get copyWith;
}

/// @nodoc
abstract class $AuthOrRegValueFailureCopyWith<T, $Res> {
  factory $AuthOrRegValueFailureCopyWith(AuthOrRegValueFailure<T> value,
          $Res Function(AuthOrRegValueFailure<T>) then) =
      _$AuthOrRegValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$AuthOrRegValueFailureCopyWithImpl<T, $Res>
    implements $AuthOrRegValueFailureCopyWith<T, $Res> {
  _$AuthOrRegValueFailureCopyWithImpl(this._value, this._then);

  final AuthOrRegValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(AuthOrRegValueFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res>
    implements $AuthOrRegValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$AuthOrRegValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidEmail<T>
    with DiagnosticableTreeMixin
    implements InvalidEmail<T> {
  const _$InvalidEmail({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthOrRegValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'AuthOrRegValueFailure<$T>.invalidEmail'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPassword(T failedValue),
    @required TResult invalidUsername(T failedValue),
    @required TResult exceedingLength(T failedValue),
    @required TResult emptyField(T failedValue),
    @required TResult containsProfanity(T failedValue),
    @required TResult stringEmpty(T failedValue),
    @required TResult stringExceedsMaxLength(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(exceedingLength != null);
    assert(emptyField != null);
    assert(containsProfanity != null);
    assert(stringEmpty != null);
    assert(stringExceedsMaxLength != null);
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(T failedValue),
    TResult invalidPassword(T failedValue),
    TResult invalidUsername(T failedValue),
    TResult exceedingLength(T failedValue),
    TResult emptyField(T failedValue),
    TResult containsProfanity(T failedValue),
    TResult stringEmpty(T failedValue),
    TResult stringExceedsMaxLength(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult emptyField(EmptyField<T> value),
    @required TResult containsProfanity(ContainsProfanity<T> value),
    @required TResult stringEmpty(StringEmpty<T> value),
    @required TResult stringExceedsMaxLength(StringExceedsMaxLength<T> value),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(exceedingLength != null);
    assert(emptyField != null);
    assert(containsProfanity != null);
    assert(stringEmpty != null);
    assert(stringExceedsMaxLength != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult emptyField(EmptyField<T> value),
    TResult containsProfanity(ContainsProfanity<T> value),
    TResult stringEmpty(StringEmpty<T> value),
    TResult stringExceedsMaxLength(StringExceedsMaxLength<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements AuthOrRegValueFailure<T> {
  const factory InvalidEmail({@required T failedValue}) = _$InvalidEmail<T>;

  @override
  T get failedValue;
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidPasswordCopyWith<T, $Res>
    implements $AuthOrRegValueFailureCopyWith<T, $Res> {
  factory $InvalidPasswordCopyWith(
          InvalidPassword<T> value, $Res Function(InvalidPassword<T>) then) =
      _$InvalidPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidPasswordCopyWithImpl<T, $Res>
    extends _$AuthOrRegValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPasswordCopyWith<T, $Res> {
  _$InvalidPasswordCopyWithImpl(
      InvalidPassword<T> _value, $Res Function(InvalidPassword<T>) _then)
      : super(_value, (v) => _then(v as InvalidPassword<T>));

  @override
  InvalidPassword<T> get _value => super._value as InvalidPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidPassword<T>
    with DiagnosticableTreeMixin
    implements InvalidPassword<T> {
  const _$InvalidPassword({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthOrRegValueFailure<$T>.invalidPassword(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AuthOrRegValueFailure<$T>.invalidPassword'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith =>
      _$InvalidPasswordCopyWithImpl<T, InvalidPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPassword(T failedValue),
    @required TResult invalidUsername(T failedValue),
    @required TResult exceedingLength(T failedValue),
    @required TResult emptyField(T failedValue),
    @required TResult containsProfanity(T failedValue),
    @required TResult stringEmpty(T failedValue),
    @required TResult stringExceedsMaxLength(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(exceedingLength != null);
    assert(emptyField != null);
    assert(containsProfanity != null);
    assert(stringEmpty != null);
    assert(stringExceedsMaxLength != null);
    return invalidPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(T failedValue),
    TResult invalidPassword(T failedValue),
    TResult invalidUsername(T failedValue),
    TResult exceedingLength(T failedValue),
    TResult emptyField(T failedValue),
    TResult containsProfanity(T failedValue),
    TResult stringEmpty(T failedValue),
    TResult stringExceedsMaxLength(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidPassword != null) {
      return invalidPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult emptyField(EmptyField<T> value),
    @required TResult containsProfanity(ContainsProfanity<T> value),
    @required TResult stringEmpty(StringEmpty<T> value),
    @required TResult stringExceedsMaxLength(StringExceedsMaxLength<T> value),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(exceedingLength != null);
    assert(emptyField != null);
    assert(containsProfanity != null);
    assert(stringEmpty != null);
    assert(stringExceedsMaxLength != null);
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult emptyField(EmptyField<T> value),
    TResult containsProfanity(ContainsProfanity<T> value),
    TResult stringEmpty(StringEmpty<T> value),
    TResult stringExceedsMaxLength(StringExceedsMaxLength<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidPassword<T> implements AuthOrRegValueFailure<T> {
  const factory InvalidPassword({@required T failedValue}) =
      _$InvalidPassword<T>;

  @override
  T get failedValue;
  @override
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidUsernameCopyWith<T, $Res>
    implements $AuthOrRegValueFailureCopyWith<T, $Res> {
  factory $InvalidUsernameCopyWith(
          InvalidUsername<T> value, $Res Function(InvalidUsername<T>) then) =
      _$InvalidUsernameCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidUsernameCopyWithImpl<T, $Res>
    extends _$AuthOrRegValueFailureCopyWithImpl<T, $Res>
    implements $InvalidUsernameCopyWith<T, $Res> {
  _$InvalidUsernameCopyWithImpl(
      InvalidUsername<T> _value, $Res Function(InvalidUsername<T>) _then)
      : super(_value, (v) => _then(v as InvalidUsername<T>));

  @override
  InvalidUsername<T> get _value => super._value as InvalidUsername<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidUsername<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidUsername<T>
    with DiagnosticableTreeMixin
    implements InvalidUsername<T> {
  const _$InvalidUsername({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthOrRegValueFailure<$T>.invalidUsername(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AuthOrRegValueFailure<$T>.invalidUsername'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidUsername<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidUsernameCopyWith<T, InvalidUsername<T>> get copyWith =>
      _$InvalidUsernameCopyWithImpl<T, InvalidUsername<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPassword(T failedValue),
    @required TResult invalidUsername(T failedValue),
    @required TResult exceedingLength(T failedValue),
    @required TResult emptyField(T failedValue),
    @required TResult containsProfanity(T failedValue),
    @required TResult stringEmpty(T failedValue),
    @required TResult stringExceedsMaxLength(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(exceedingLength != null);
    assert(emptyField != null);
    assert(containsProfanity != null);
    assert(stringEmpty != null);
    assert(stringExceedsMaxLength != null);
    return invalidUsername(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(T failedValue),
    TResult invalidPassword(T failedValue),
    TResult invalidUsername(T failedValue),
    TResult exceedingLength(T failedValue),
    TResult emptyField(T failedValue),
    TResult containsProfanity(T failedValue),
    TResult stringEmpty(T failedValue),
    TResult stringExceedsMaxLength(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidUsername != null) {
      return invalidUsername(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult emptyField(EmptyField<T> value),
    @required TResult containsProfanity(ContainsProfanity<T> value),
    @required TResult stringEmpty(StringEmpty<T> value),
    @required TResult stringExceedsMaxLength(StringExceedsMaxLength<T> value),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(exceedingLength != null);
    assert(emptyField != null);
    assert(containsProfanity != null);
    assert(stringEmpty != null);
    assert(stringExceedsMaxLength != null);
    return invalidUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult emptyField(EmptyField<T> value),
    TResult containsProfanity(ContainsProfanity<T> value),
    TResult stringEmpty(StringEmpty<T> value),
    TResult stringExceedsMaxLength(StringExceedsMaxLength<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidUsername != null) {
      return invalidUsername(this);
    }
    return orElse();
  }
}

abstract class InvalidUsername<T> implements AuthOrRegValueFailure<T> {
  const factory InvalidUsername({@required T failedValue}) =
      _$InvalidUsername<T>;

  @override
  T get failedValue;
  @override
  $InvalidUsernameCopyWith<T, InvalidUsername<T>> get copyWith;
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<T, $Res>
    implements $AuthOrRegValueFailureCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$AuthOrRegValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$ExceedingLength<T>
    with DiagnosticableTreeMixin
    implements ExceedingLength<T> {
  const _$ExceedingLength({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthOrRegValueFailure<$T>.exceedingLength(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AuthOrRegValueFailure<$T>.exceedingLength'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPassword(T failedValue),
    @required TResult invalidUsername(T failedValue),
    @required TResult exceedingLength(T failedValue),
    @required TResult emptyField(T failedValue),
    @required TResult containsProfanity(T failedValue),
    @required TResult stringEmpty(T failedValue),
    @required TResult stringExceedsMaxLength(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(exceedingLength != null);
    assert(emptyField != null);
    assert(containsProfanity != null);
    assert(stringEmpty != null);
    assert(stringExceedsMaxLength != null);
    return exceedingLength(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(T failedValue),
    TResult invalidPassword(T failedValue),
    TResult invalidUsername(T failedValue),
    TResult exceedingLength(T failedValue),
    TResult emptyField(T failedValue),
    TResult containsProfanity(T failedValue),
    TResult stringEmpty(T failedValue),
    TResult stringExceedsMaxLength(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult emptyField(EmptyField<T> value),
    @required TResult containsProfanity(ContainsProfanity<T> value),
    @required TResult stringEmpty(StringEmpty<T> value),
    @required TResult stringExceedsMaxLength(StringExceedsMaxLength<T> value),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(exceedingLength != null);
    assert(emptyField != null);
    assert(containsProfanity != null);
    assert(stringEmpty != null);
    assert(stringExceedsMaxLength != null);
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult emptyField(EmptyField<T> value),
    TResult containsProfanity(ContainsProfanity<T> value),
    TResult stringEmpty(StringEmpty<T> value),
    TResult stringExceedsMaxLength(StringExceedsMaxLength<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements AuthOrRegValueFailure<T> {
  const factory ExceedingLength({@required T failedValue}) =
      _$ExceedingLength<T>;

  @override
  T get failedValue;
  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith;
}

/// @nodoc
abstract class $EmptyFieldCopyWith<T, $Res>
    implements $AuthOrRegValueFailureCopyWith<T, $Res> {
  factory $EmptyFieldCopyWith(
          EmptyField<T> value, $Res Function(EmptyField<T>) then) =
      _$EmptyFieldCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyFieldCopyWithImpl<T, $Res>
    extends _$AuthOrRegValueFailureCopyWithImpl<T, $Res>
    implements $EmptyFieldCopyWith<T, $Res> {
  _$EmptyFieldCopyWithImpl(
      EmptyField<T> _value, $Res Function(EmptyField<T>) _then)
      : super(_value, (v) => _then(v as EmptyField<T>));

  @override
  EmptyField<T> get _value => super._value as EmptyField<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(EmptyField<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$EmptyField<T> with DiagnosticableTreeMixin implements EmptyField<T> {
  const _$EmptyField({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthOrRegValueFailure<$T>.emptyField(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthOrRegValueFailure<$T>.emptyField'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmptyField<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $EmptyFieldCopyWith<T, EmptyField<T>> get copyWith =>
      _$EmptyFieldCopyWithImpl<T, EmptyField<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPassword(T failedValue),
    @required TResult invalidUsername(T failedValue),
    @required TResult exceedingLength(T failedValue),
    @required TResult emptyField(T failedValue),
    @required TResult containsProfanity(T failedValue),
    @required TResult stringEmpty(T failedValue),
    @required TResult stringExceedsMaxLength(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(exceedingLength != null);
    assert(emptyField != null);
    assert(containsProfanity != null);
    assert(stringEmpty != null);
    assert(stringExceedsMaxLength != null);
    return emptyField(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(T failedValue),
    TResult invalidPassword(T failedValue),
    TResult invalidUsername(T failedValue),
    TResult exceedingLength(T failedValue),
    TResult emptyField(T failedValue),
    TResult containsProfanity(T failedValue),
    TResult stringEmpty(T failedValue),
    TResult stringExceedsMaxLength(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emptyField != null) {
      return emptyField(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult emptyField(EmptyField<T> value),
    @required TResult containsProfanity(ContainsProfanity<T> value),
    @required TResult stringEmpty(StringEmpty<T> value),
    @required TResult stringExceedsMaxLength(StringExceedsMaxLength<T> value),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(exceedingLength != null);
    assert(emptyField != null);
    assert(containsProfanity != null);
    assert(stringEmpty != null);
    assert(stringExceedsMaxLength != null);
    return emptyField(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult emptyField(EmptyField<T> value),
    TResult containsProfanity(ContainsProfanity<T> value),
    TResult stringEmpty(StringEmpty<T> value),
    TResult stringExceedsMaxLength(StringExceedsMaxLength<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emptyField != null) {
      return emptyField(this);
    }
    return orElse();
  }
}

abstract class EmptyField<T> implements AuthOrRegValueFailure<T> {
  const factory EmptyField({@required T failedValue}) = _$EmptyField<T>;

  @override
  T get failedValue;
  @override
  $EmptyFieldCopyWith<T, EmptyField<T>> get copyWith;
}

/// @nodoc
abstract class $ContainsProfanityCopyWith<T, $Res>
    implements $AuthOrRegValueFailureCopyWith<T, $Res> {
  factory $ContainsProfanityCopyWith(ContainsProfanity<T> value,
          $Res Function(ContainsProfanity<T>) then) =
      _$ContainsProfanityCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$ContainsProfanityCopyWithImpl<T, $Res>
    extends _$AuthOrRegValueFailureCopyWithImpl<T, $Res>
    implements $ContainsProfanityCopyWith<T, $Res> {
  _$ContainsProfanityCopyWithImpl(
      ContainsProfanity<T> _value, $Res Function(ContainsProfanity<T>) _then)
      : super(_value, (v) => _then(v as ContainsProfanity<T>));

  @override
  ContainsProfanity<T> get _value => super._value as ContainsProfanity<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ContainsProfanity<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$ContainsProfanity<T>
    with DiagnosticableTreeMixin
    implements ContainsProfanity<T> {
  const _$ContainsProfanity({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthOrRegValueFailure<$T>.containsProfanity(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AuthOrRegValueFailure<$T>.containsProfanity'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ContainsProfanity<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $ContainsProfanityCopyWith<T, ContainsProfanity<T>> get copyWith =>
      _$ContainsProfanityCopyWithImpl<T, ContainsProfanity<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPassword(T failedValue),
    @required TResult invalidUsername(T failedValue),
    @required TResult exceedingLength(T failedValue),
    @required TResult emptyField(T failedValue),
    @required TResult containsProfanity(T failedValue),
    @required TResult stringEmpty(T failedValue),
    @required TResult stringExceedsMaxLength(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(exceedingLength != null);
    assert(emptyField != null);
    assert(containsProfanity != null);
    assert(stringEmpty != null);
    assert(stringExceedsMaxLength != null);
    return containsProfanity(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(T failedValue),
    TResult invalidPassword(T failedValue),
    TResult invalidUsername(T failedValue),
    TResult exceedingLength(T failedValue),
    TResult emptyField(T failedValue),
    TResult containsProfanity(T failedValue),
    TResult stringEmpty(T failedValue),
    TResult stringExceedsMaxLength(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (containsProfanity != null) {
      return containsProfanity(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult emptyField(EmptyField<T> value),
    @required TResult containsProfanity(ContainsProfanity<T> value),
    @required TResult stringEmpty(StringEmpty<T> value),
    @required TResult stringExceedsMaxLength(StringExceedsMaxLength<T> value),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(exceedingLength != null);
    assert(emptyField != null);
    assert(containsProfanity != null);
    assert(stringEmpty != null);
    assert(stringExceedsMaxLength != null);
    return containsProfanity(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult emptyField(EmptyField<T> value),
    TResult containsProfanity(ContainsProfanity<T> value),
    TResult stringEmpty(StringEmpty<T> value),
    TResult stringExceedsMaxLength(StringExceedsMaxLength<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (containsProfanity != null) {
      return containsProfanity(this);
    }
    return orElse();
  }
}

abstract class ContainsProfanity<T> implements AuthOrRegValueFailure<T> {
  const factory ContainsProfanity({@required T failedValue}) =
      _$ContainsProfanity<T>;

  @override
  T get failedValue;
  @override
  $ContainsProfanityCopyWith<T, ContainsProfanity<T>> get copyWith;
}

/// @nodoc
abstract class $StringEmptyCopyWith<T, $Res>
    implements $AuthOrRegValueFailureCopyWith<T, $Res> {
  factory $StringEmptyCopyWith(
          StringEmpty<T> value, $Res Function(StringEmpty<T>) then) =
      _$StringEmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$StringEmptyCopyWithImpl<T, $Res>
    extends _$AuthOrRegValueFailureCopyWithImpl<T, $Res>
    implements $StringEmptyCopyWith<T, $Res> {
  _$StringEmptyCopyWithImpl(
      StringEmpty<T> _value, $Res Function(StringEmpty<T>) _then)
      : super(_value, (v) => _then(v as StringEmpty<T>));

  @override
  StringEmpty<T> get _value => super._value as StringEmpty<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(StringEmpty<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$StringEmpty<T> with DiagnosticableTreeMixin implements StringEmpty<T> {
  const _$StringEmpty({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthOrRegValueFailure<$T>.stringEmpty(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'AuthOrRegValueFailure<$T>.stringEmpty'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StringEmpty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $StringEmptyCopyWith<T, StringEmpty<T>> get copyWith =>
      _$StringEmptyCopyWithImpl<T, StringEmpty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPassword(T failedValue),
    @required TResult invalidUsername(T failedValue),
    @required TResult exceedingLength(T failedValue),
    @required TResult emptyField(T failedValue),
    @required TResult containsProfanity(T failedValue),
    @required TResult stringEmpty(T failedValue),
    @required TResult stringExceedsMaxLength(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(exceedingLength != null);
    assert(emptyField != null);
    assert(containsProfanity != null);
    assert(stringEmpty != null);
    assert(stringExceedsMaxLength != null);
    return stringEmpty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(T failedValue),
    TResult invalidPassword(T failedValue),
    TResult invalidUsername(T failedValue),
    TResult exceedingLength(T failedValue),
    TResult emptyField(T failedValue),
    TResult containsProfanity(T failedValue),
    TResult stringEmpty(T failedValue),
    TResult stringExceedsMaxLength(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stringEmpty != null) {
      return stringEmpty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult emptyField(EmptyField<T> value),
    @required TResult containsProfanity(ContainsProfanity<T> value),
    @required TResult stringEmpty(StringEmpty<T> value),
    @required TResult stringExceedsMaxLength(StringExceedsMaxLength<T> value),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(exceedingLength != null);
    assert(emptyField != null);
    assert(containsProfanity != null);
    assert(stringEmpty != null);
    assert(stringExceedsMaxLength != null);
    return stringEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult emptyField(EmptyField<T> value),
    TResult containsProfanity(ContainsProfanity<T> value),
    TResult stringEmpty(StringEmpty<T> value),
    TResult stringExceedsMaxLength(StringExceedsMaxLength<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stringEmpty != null) {
      return stringEmpty(this);
    }
    return orElse();
  }
}

abstract class StringEmpty<T> implements AuthOrRegValueFailure<T> {
  const factory StringEmpty({@required T failedValue}) = _$StringEmpty<T>;

  @override
  T get failedValue;
  @override
  $StringEmptyCopyWith<T, StringEmpty<T>> get copyWith;
}

/// @nodoc
abstract class $StringExceedsMaxLengthCopyWith<T, $Res>
    implements $AuthOrRegValueFailureCopyWith<T, $Res> {
  factory $StringExceedsMaxLengthCopyWith(StringExceedsMaxLength<T> value,
          $Res Function(StringExceedsMaxLength<T>) then) =
      _$StringExceedsMaxLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$StringExceedsMaxLengthCopyWithImpl<T, $Res>
    extends _$AuthOrRegValueFailureCopyWithImpl<T, $Res>
    implements $StringExceedsMaxLengthCopyWith<T, $Res> {
  _$StringExceedsMaxLengthCopyWithImpl(StringExceedsMaxLength<T> _value,
      $Res Function(StringExceedsMaxLength<T>) _then)
      : super(_value, (v) => _then(v as StringExceedsMaxLength<T>));

  @override
  StringExceedsMaxLength<T> get _value =>
      super._value as StringExceedsMaxLength<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(StringExceedsMaxLength<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$StringExceedsMaxLength<T>
    with DiagnosticableTreeMixin
    implements StringExceedsMaxLength<T> {
  const _$StringExceedsMaxLength({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthOrRegValueFailure<$T>.stringExceedsMaxLength(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AuthOrRegValueFailure<$T>.stringExceedsMaxLength'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StringExceedsMaxLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $StringExceedsMaxLengthCopyWith<T, StringExceedsMaxLength<T>> get copyWith =>
      _$StringExceedsMaxLengthCopyWithImpl<T, StringExceedsMaxLength<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPassword(T failedValue),
    @required TResult invalidUsername(T failedValue),
    @required TResult exceedingLength(T failedValue),
    @required TResult emptyField(T failedValue),
    @required TResult containsProfanity(T failedValue),
    @required TResult stringEmpty(T failedValue),
    @required TResult stringExceedsMaxLength(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(exceedingLength != null);
    assert(emptyField != null);
    assert(containsProfanity != null);
    assert(stringEmpty != null);
    assert(stringExceedsMaxLength != null);
    return stringExceedsMaxLength(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(T failedValue),
    TResult invalidPassword(T failedValue),
    TResult invalidUsername(T failedValue),
    TResult exceedingLength(T failedValue),
    TResult emptyField(T failedValue),
    TResult containsProfanity(T failedValue),
    TResult stringEmpty(T failedValue),
    TResult stringExceedsMaxLength(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stringExceedsMaxLength != null) {
      return stringExceedsMaxLength(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult emptyField(EmptyField<T> value),
    @required TResult containsProfanity(ContainsProfanity<T> value),
    @required TResult stringEmpty(StringEmpty<T> value),
    @required TResult stringExceedsMaxLength(StringExceedsMaxLength<T> value),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(exceedingLength != null);
    assert(emptyField != null);
    assert(containsProfanity != null);
    assert(stringEmpty != null);
    assert(stringExceedsMaxLength != null);
    return stringExceedsMaxLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult emptyField(EmptyField<T> value),
    TResult containsProfanity(ContainsProfanity<T> value),
    TResult stringEmpty(StringEmpty<T> value),
    TResult stringExceedsMaxLength(StringExceedsMaxLength<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stringExceedsMaxLength != null) {
      return stringExceedsMaxLength(this);
    }
    return orElse();
  }
}

abstract class StringExceedsMaxLength<T> implements AuthOrRegValueFailure<T> {
  const factory StringExceedsMaxLength({@required T failedValue}) =
      _$StringExceedsMaxLength<T>;

  @override
  T get failedValue;
  @override
  $StringExceedsMaxLengthCopyWith<T, StringExceedsMaxLength<T>> get copyWith;
}
