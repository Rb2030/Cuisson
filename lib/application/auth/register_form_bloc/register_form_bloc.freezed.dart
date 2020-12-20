// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'register_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RegisterFormEventTearOff {
  const _$RegisterFormEventTearOff();

// ignore: unused_element
  _EmailChanged emailChanged(String emailString) {
    return _EmailChanged(
      emailString,
    );
  }

// ignore: unused_element
  _EmailButtonClicked emailButtonClicked() {
    return const _EmailButtonClicked();
  }

// ignore: unused_element
  _PasswordChanged passwordChanged(String passwordString) {
    return _PasswordChanged(
      passwordString,
    );
  }

// ignore: unused_element
  _PasswordButtonClicked passwordButtonClicked() {
    return const _PasswordButtonClicked();
  }

// ignore: unused_element
  _UsernameChanged usernameChanged(String usernameString) {
    return _UsernameChanged(
      usernameString,
    );
  }

// ignore: unused_element
  _UsernameButtonClicked usernameButtonClicked() {
    return const _UsernameButtonClicked();
  }

// ignore: unused_element
  _RegisterWithEmailAndPasswordPressed registerWithEmailAndPasswordPressed() {
    return const _RegisterWithEmailAndPasswordPressed();
  }
}

/// @nodoc
// ignore: unused_element
const $RegisterFormEvent = _$RegisterFormEventTearOff();

/// @nodoc
mixin _$RegisterFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailString),
    @required TResult emailButtonClicked(),
    @required TResult passwordChanged(String passwordString),
    @required TResult passwordButtonClicked(),
    @required TResult usernameChanged(String usernameString),
    @required TResult usernameButtonClicked(),
    @required TResult registerWithEmailAndPasswordPressed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailString),
    TResult emailButtonClicked(),
    TResult passwordChanged(String passwordString),
    TResult passwordButtonClicked(),
    TResult usernameChanged(String usernameString),
    TResult usernameButtonClicked(),
    TResult registerWithEmailAndPasswordPressed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult emailButtonClicked(_EmailButtonClicked value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult passwordButtonClicked(_PasswordButtonClicked value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult usernameButtonClicked(_UsernameButtonClicked value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            _RegisterWithEmailAndPasswordPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult emailButtonClicked(_EmailButtonClicked value),
    TResult passwordChanged(_PasswordChanged value),
    TResult passwordButtonClicked(_PasswordButtonClicked value),
    TResult usernameChanged(_UsernameChanged value),
    TResult usernameButtonClicked(_UsernameButtonClicked value),
    TResult registerWithEmailAndPasswordPressed(
        _RegisterWithEmailAndPasswordPressed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RegisterFormEventCopyWith<$Res> {
  factory $RegisterFormEventCopyWith(
          RegisterFormEvent value, $Res Function(RegisterFormEvent) then) =
      _$RegisterFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterFormEventCopyWithImpl<$Res>
    implements $RegisterFormEventCopyWith<$Res> {
  _$RegisterFormEventCopyWithImpl(this._value, this._then);

  final RegisterFormEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterFormEvent) _then;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailString});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object emailString = freezed,
  }) {
    return _then(_EmailChanged(
      emailString == freezed ? _value.emailString : emailString as String,
    ));
  }
}

/// @nodoc
class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.emailString) : assert(emailString != null);

  @override
  final String emailString;

  @override
  String toString() {
    return 'RegisterFormEvent.emailChanged(emailString: $emailString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChanged &&
            (identical(other.emailString, emailString) ||
                const DeepCollectionEquality()
                    .equals(other.emailString, emailString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailString);

  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailString),
    @required TResult emailButtonClicked(),
    @required TResult passwordChanged(String passwordString),
    @required TResult passwordButtonClicked(),
    @required TResult usernameChanged(String usernameString),
    @required TResult usernameButtonClicked(),
    @required TResult registerWithEmailAndPasswordPressed(),
  }) {
    assert(emailChanged != null);
    assert(emailButtonClicked != null);
    assert(passwordChanged != null);
    assert(passwordButtonClicked != null);
    assert(usernameChanged != null);
    assert(usernameButtonClicked != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return emailChanged(emailString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailString),
    TResult emailButtonClicked(),
    TResult passwordChanged(String passwordString),
    TResult passwordButtonClicked(),
    TResult usernameChanged(String usernameString),
    TResult usernameButtonClicked(),
    TResult registerWithEmailAndPasswordPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult emailButtonClicked(_EmailButtonClicked value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult passwordButtonClicked(_PasswordButtonClicked value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult usernameButtonClicked(_UsernameButtonClicked value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            _RegisterWithEmailAndPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(emailButtonClicked != null);
    assert(passwordChanged != null);
    assert(passwordButtonClicked != null);
    assert(usernameChanged != null);
    assert(usernameButtonClicked != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult emailButtonClicked(_EmailButtonClicked value),
    TResult passwordChanged(_PasswordChanged value),
    TResult passwordButtonClicked(_PasswordButtonClicked value),
    TResult usernameChanged(_UsernameChanged value),
    TResult usernameButtonClicked(_UsernameButtonClicked value),
    TResult registerWithEmailAndPasswordPressed(
        _RegisterWithEmailAndPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements RegisterFormEvent {
  const factory _EmailChanged(String emailString) = _$_EmailChanged;

  String get emailString;
  _$EmailChangedCopyWith<_EmailChanged> get copyWith;
}

/// @nodoc
abstract class _$EmailButtonClickedCopyWith<$Res> {
  factory _$EmailButtonClickedCopyWith(
          _EmailButtonClicked value, $Res Function(_EmailButtonClicked) then) =
      __$EmailButtonClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmailButtonClickedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements _$EmailButtonClickedCopyWith<$Res> {
  __$EmailButtonClickedCopyWithImpl(
      _EmailButtonClicked _value, $Res Function(_EmailButtonClicked) _then)
      : super(_value, (v) => _then(v as _EmailButtonClicked));

  @override
  _EmailButtonClicked get _value => super._value as _EmailButtonClicked;
}

/// @nodoc
class _$_EmailButtonClicked implements _EmailButtonClicked {
  const _$_EmailButtonClicked();

  @override
  String toString() {
    return 'RegisterFormEvent.emailButtonClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EmailButtonClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailString),
    @required TResult emailButtonClicked(),
    @required TResult passwordChanged(String passwordString),
    @required TResult passwordButtonClicked(),
    @required TResult usernameChanged(String usernameString),
    @required TResult usernameButtonClicked(),
    @required TResult registerWithEmailAndPasswordPressed(),
  }) {
    assert(emailChanged != null);
    assert(emailButtonClicked != null);
    assert(passwordChanged != null);
    assert(passwordButtonClicked != null);
    assert(usernameChanged != null);
    assert(usernameButtonClicked != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return emailButtonClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailString),
    TResult emailButtonClicked(),
    TResult passwordChanged(String passwordString),
    TResult passwordButtonClicked(),
    TResult usernameChanged(String usernameString),
    TResult usernameButtonClicked(),
    TResult registerWithEmailAndPasswordPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailButtonClicked != null) {
      return emailButtonClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult emailButtonClicked(_EmailButtonClicked value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult passwordButtonClicked(_PasswordButtonClicked value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult usernameButtonClicked(_UsernameButtonClicked value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            _RegisterWithEmailAndPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(emailButtonClicked != null);
    assert(passwordChanged != null);
    assert(passwordButtonClicked != null);
    assert(usernameChanged != null);
    assert(usernameButtonClicked != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return emailButtonClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult emailButtonClicked(_EmailButtonClicked value),
    TResult passwordChanged(_PasswordChanged value),
    TResult passwordButtonClicked(_PasswordButtonClicked value),
    TResult usernameChanged(_UsernameChanged value),
    TResult usernameButtonClicked(_UsernameButtonClicked value),
    TResult registerWithEmailAndPasswordPressed(
        _RegisterWithEmailAndPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailButtonClicked != null) {
      return emailButtonClicked(this);
    }
    return orElse();
  }
}

abstract class _EmailButtonClicked implements RegisterFormEvent {
  const factory _EmailButtonClicked() = _$_EmailButtonClicked;
}

/// @nodoc
abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) then) =
      __$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordString});
}

/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(
      _PasswordChanged _value, $Res Function(_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _PasswordChanged));

  @override
  _PasswordChanged get _value => super._value as _PasswordChanged;

  @override
  $Res call({
    Object passwordString = freezed,
  }) {
    return _then(_PasswordChanged(
      passwordString == freezed
          ? _value.passwordString
          : passwordString as String,
    ));
  }
}

/// @nodoc
class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.passwordString)
      : assert(passwordString != null);

  @override
  final String passwordString;

  @override
  String toString() {
    return 'RegisterFormEvent.passwordChanged(passwordString: $passwordString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordChanged &&
            (identical(other.passwordString, passwordString) ||
                const DeepCollectionEquality()
                    .equals(other.passwordString, passwordString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(passwordString);

  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailString),
    @required TResult emailButtonClicked(),
    @required TResult passwordChanged(String passwordString),
    @required TResult passwordButtonClicked(),
    @required TResult usernameChanged(String usernameString),
    @required TResult usernameButtonClicked(),
    @required TResult registerWithEmailAndPasswordPressed(),
  }) {
    assert(emailChanged != null);
    assert(emailButtonClicked != null);
    assert(passwordChanged != null);
    assert(passwordButtonClicked != null);
    assert(usernameChanged != null);
    assert(usernameButtonClicked != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return passwordChanged(passwordString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailString),
    TResult emailButtonClicked(),
    TResult passwordChanged(String passwordString),
    TResult passwordButtonClicked(),
    TResult usernameChanged(String usernameString),
    TResult usernameButtonClicked(),
    TResult registerWithEmailAndPasswordPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(passwordString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult emailButtonClicked(_EmailButtonClicked value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult passwordButtonClicked(_PasswordButtonClicked value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult usernameButtonClicked(_UsernameButtonClicked value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            _RegisterWithEmailAndPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(emailButtonClicked != null);
    assert(passwordChanged != null);
    assert(passwordButtonClicked != null);
    assert(usernameChanged != null);
    assert(usernameButtonClicked != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult emailButtonClicked(_EmailButtonClicked value),
    TResult passwordChanged(_PasswordChanged value),
    TResult passwordButtonClicked(_PasswordButtonClicked value),
    TResult usernameChanged(_UsernameChanged value),
    TResult usernameButtonClicked(_UsernameButtonClicked value),
    TResult registerWithEmailAndPasswordPressed(
        _RegisterWithEmailAndPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements RegisterFormEvent {
  const factory _PasswordChanged(String passwordString) = _$_PasswordChanged;

  String get passwordString;
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith;
}

/// @nodoc
abstract class _$PasswordButtonClickedCopyWith<$Res> {
  factory _$PasswordButtonClickedCopyWith(_PasswordButtonClicked value,
          $Res Function(_PasswordButtonClicked) then) =
      __$PasswordButtonClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PasswordButtonClickedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements _$PasswordButtonClickedCopyWith<$Res> {
  __$PasswordButtonClickedCopyWithImpl(_PasswordButtonClicked _value,
      $Res Function(_PasswordButtonClicked) _then)
      : super(_value, (v) => _then(v as _PasswordButtonClicked));

  @override
  _PasswordButtonClicked get _value => super._value as _PasswordButtonClicked;
}

/// @nodoc
class _$_PasswordButtonClicked implements _PasswordButtonClicked {
  const _$_PasswordButtonClicked();

  @override
  String toString() {
    return 'RegisterFormEvent.passwordButtonClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PasswordButtonClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailString),
    @required TResult emailButtonClicked(),
    @required TResult passwordChanged(String passwordString),
    @required TResult passwordButtonClicked(),
    @required TResult usernameChanged(String usernameString),
    @required TResult usernameButtonClicked(),
    @required TResult registerWithEmailAndPasswordPressed(),
  }) {
    assert(emailChanged != null);
    assert(emailButtonClicked != null);
    assert(passwordChanged != null);
    assert(passwordButtonClicked != null);
    assert(usernameChanged != null);
    assert(usernameButtonClicked != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return passwordButtonClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailString),
    TResult emailButtonClicked(),
    TResult passwordChanged(String passwordString),
    TResult passwordButtonClicked(),
    TResult usernameChanged(String usernameString),
    TResult usernameButtonClicked(),
    TResult registerWithEmailAndPasswordPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordButtonClicked != null) {
      return passwordButtonClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult emailButtonClicked(_EmailButtonClicked value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult passwordButtonClicked(_PasswordButtonClicked value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult usernameButtonClicked(_UsernameButtonClicked value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            _RegisterWithEmailAndPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(emailButtonClicked != null);
    assert(passwordChanged != null);
    assert(passwordButtonClicked != null);
    assert(usernameChanged != null);
    assert(usernameButtonClicked != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return passwordButtonClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult emailButtonClicked(_EmailButtonClicked value),
    TResult passwordChanged(_PasswordChanged value),
    TResult passwordButtonClicked(_PasswordButtonClicked value),
    TResult usernameChanged(_UsernameChanged value),
    TResult usernameButtonClicked(_UsernameButtonClicked value),
    TResult registerWithEmailAndPasswordPressed(
        _RegisterWithEmailAndPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordButtonClicked != null) {
      return passwordButtonClicked(this);
    }
    return orElse();
  }
}

abstract class _PasswordButtonClicked implements RegisterFormEvent {
  const factory _PasswordButtonClicked() = _$_PasswordButtonClicked;
}

/// @nodoc
abstract class _$UsernameChangedCopyWith<$Res> {
  factory _$UsernameChangedCopyWith(
          _UsernameChanged value, $Res Function(_UsernameChanged) then) =
      __$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String usernameString});
}

/// @nodoc
class __$UsernameChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements _$UsernameChangedCopyWith<$Res> {
  __$UsernameChangedCopyWithImpl(
      _UsernameChanged _value, $Res Function(_UsernameChanged) _then)
      : super(_value, (v) => _then(v as _UsernameChanged));

  @override
  _UsernameChanged get _value => super._value as _UsernameChanged;

  @override
  $Res call({
    Object usernameString = freezed,
  }) {
    return _then(_UsernameChanged(
      usernameString == freezed
          ? _value.usernameString
          : usernameString as String,
    ));
  }
}

/// @nodoc
class _$_UsernameChanged implements _UsernameChanged {
  const _$_UsernameChanged(this.usernameString)
      : assert(usernameString != null);

  @override
  final String usernameString;

  @override
  String toString() {
    return 'RegisterFormEvent.usernameChanged(usernameString: $usernameString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UsernameChanged &&
            (identical(other.usernameString, usernameString) ||
                const DeepCollectionEquality()
                    .equals(other.usernameString, usernameString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(usernameString);

  @override
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith =>
      __$UsernameChangedCopyWithImpl<_UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailString),
    @required TResult emailButtonClicked(),
    @required TResult passwordChanged(String passwordString),
    @required TResult passwordButtonClicked(),
    @required TResult usernameChanged(String usernameString),
    @required TResult usernameButtonClicked(),
    @required TResult registerWithEmailAndPasswordPressed(),
  }) {
    assert(emailChanged != null);
    assert(emailButtonClicked != null);
    assert(passwordChanged != null);
    assert(passwordButtonClicked != null);
    assert(usernameChanged != null);
    assert(usernameButtonClicked != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return usernameChanged(usernameString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailString),
    TResult emailButtonClicked(),
    TResult passwordChanged(String passwordString),
    TResult passwordButtonClicked(),
    TResult usernameChanged(String usernameString),
    TResult usernameButtonClicked(),
    TResult registerWithEmailAndPasswordPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(usernameString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult emailButtonClicked(_EmailButtonClicked value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult passwordButtonClicked(_PasswordButtonClicked value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult usernameButtonClicked(_UsernameButtonClicked value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            _RegisterWithEmailAndPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(emailButtonClicked != null);
    assert(passwordChanged != null);
    assert(passwordButtonClicked != null);
    assert(usernameChanged != null);
    assert(usernameButtonClicked != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult emailButtonClicked(_EmailButtonClicked value),
    TResult passwordChanged(_PasswordChanged value),
    TResult passwordButtonClicked(_PasswordButtonClicked value),
    TResult usernameChanged(_UsernameChanged value),
    TResult usernameButtonClicked(_UsernameButtonClicked value),
    TResult registerWithEmailAndPasswordPressed(
        _RegisterWithEmailAndPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChanged implements RegisterFormEvent {
  const factory _UsernameChanged(String usernameString) = _$_UsernameChanged;

  String get usernameString;
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith;
}

/// @nodoc
abstract class _$UsernameButtonClickedCopyWith<$Res> {
  factory _$UsernameButtonClickedCopyWith(_UsernameButtonClicked value,
          $Res Function(_UsernameButtonClicked) then) =
      __$UsernameButtonClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UsernameButtonClickedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements _$UsernameButtonClickedCopyWith<$Res> {
  __$UsernameButtonClickedCopyWithImpl(_UsernameButtonClicked _value,
      $Res Function(_UsernameButtonClicked) _then)
      : super(_value, (v) => _then(v as _UsernameButtonClicked));

  @override
  _UsernameButtonClicked get _value => super._value as _UsernameButtonClicked;
}

/// @nodoc
class _$_UsernameButtonClicked implements _UsernameButtonClicked {
  const _$_UsernameButtonClicked();

  @override
  String toString() {
    return 'RegisterFormEvent.usernameButtonClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UsernameButtonClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailString),
    @required TResult emailButtonClicked(),
    @required TResult passwordChanged(String passwordString),
    @required TResult passwordButtonClicked(),
    @required TResult usernameChanged(String usernameString),
    @required TResult usernameButtonClicked(),
    @required TResult registerWithEmailAndPasswordPressed(),
  }) {
    assert(emailChanged != null);
    assert(emailButtonClicked != null);
    assert(passwordChanged != null);
    assert(passwordButtonClicked != null);
    assert(usernameChanged != null);
    assert(usernameButtonClicked != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return usernameButtonClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailString),
    TResult emailButtonClicked(),
    TResult passwordChanged(String passwordString),
    TResult passwordButtonClicked(),
    TResult usernameChanged(String usernameString),
    TResult usernameButtonClicked(),
    TResult registerWithEmailAndPasswordPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameButtonClicked != null) {
      return usernameButtonClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult emailButtonClicked(_EmailButtonClicked value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult passwordButtonClicked(_PasswordButtonClicked value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult usernameButtonClicked(_UsernameButtonClicked value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            _RegisterWithEmailAndPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(emailButtonClicked != null);
    assert(passwordChanged != null);
    assert(passwordButtonClicked != null);
    assert(usernameChanged != null);
    assert(usernameButtonClicked != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return usernameButtonClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult emailButtonClicked(_EmailButtonClicked value),
    TResult passwordChanged(_PasswordChanged value),
    TResult passwordButtonClicked(_PasswordButtonClicked value),
    TResult usernameChanged(_UsernameChanged value),
    TResult usernameButtonClicked(_UsernameButtonClicked value),
    TResult registerWithEmailAndPasswordPressed(
        _RegisterWithEmailAndPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameButtonClicked != null) {
      return usernameButtonClicked(this);
    }
    return orElse();
  }
}

abstract class _UsernameButtonClicked implements RegisterFormEvent {
  const factory _UsernameButtonClicked() = _$_UsernameButtonClicked;
}

/// @nodoc
abstract class _$RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  factory _$RegisterWithEmailAndPasswordPressedCopyWith(
          _RegisterWithEmailAndPasswordPressed value,
          $Res Function(_RegisterWithEmailAndPasswordPressed) then) =
      __$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements _$RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  __$RegisterWithEmailAndPasswordPressedCopyWithImpl(
      _RegisterWithEmailAndPasswordPressed _value,
      $Res Function(_RegisterWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as _RegisterWithEmailAndPasswordPressed));

  @override
  _RegisterWithEmailAndPasswordPressed get _value =>
      super._value as _RegisterWithEmailAndPasswordPressed;
}

/// @nodoc
class _$_RegisterWithEmailAndPasswordPressed
    implements _RegisterWithEmailAndPasswordPressed {
  const _$_RegisterWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'RegisterFormEvent.registerWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailString),
    @required TResult emailButtonClicked(),
    @required TResult passwordChanged(String passwordString),
    @required TResult passwordButtonClicked(),
    @required TResult usernameChanged(String usernameString),
    @required TResult usernameButtonClicked(),
    @required TResult registerWithEmailAndPasswordPressed(),
  }) {
    assert(emailChanged != null);
    assert(emailButtonClicked != null);
    assert(passwordChanged != null);
    assert(passwordButtonClicked != null);
    assert(usernameChanged != null);
    assert(usernameButtonClicked != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return registerWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailString),
    TResult emailButtonClicked(),
    TResult passwordChanged(String passwordString),
    TResult passwordButtonClicked(),
    TResult usernameChanged(String usernameString),
    TResult usernameButtonClicked(),
    TResult registerWithEmailAndPasswordPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult emailButtonClicked(_EmailButtonClicked value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult passwordButtonClicked(_PasswordButtonClicked value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult usernameButtonClicked(_UsernameButtonClicked value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            _RegisterWithEmailAndPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(emailButtonClicked != null);
    assert(passwordChanged != null);
    assert(passwordButtonClicked != null);
    assert(usernameChanged != null);
    assert(usernameButtonClicked != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult emailButtonClicked(_EmailButtonClicked value),
    TResult passwordChanged(_PasswordChanged value),
    TResult passwordButtonClicked(_PasswordButtonClicked value),
    TResult usernameChanged(_UsernameChanged value),
    TResult usernameButtonClicked(_UsernameButtonClicked value),
    TResult registerWithEmailAndPasswordPressed(
        _RegisterWithEmailAndPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithEmailAndPasswordPressed
    implements RegisterFormEvent {
  const factory _RegisterWithEmailAndPasswordPressed() =
      _$_RegisterWithEmailAndPasswordPressed;
}

/// @nodoc
class _$RegisterFormStateTearOff {
  const _$RegisterFormStateTearOff();

// ignore: unused_element
  _RegisterFormState call(
      {@required
          EmailAddress emailAddress,
      @required
          Password password,
      @required
          Username username,
      @required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<AuthFailure, Unit>> registerFailureOrSuccessOption,
      @required
          Option<Either<AuthFailure, Unit>>
              uniqueUsernameFailureOrSuccessOption}) {
    return _RegisterFormState(
      emailAddress: emailAddress,
      password: password,
      username: username,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      registerFailureOrSuccessOption: registerFailureOrSuccessOption,
      uniqueUsernameFailureOrSuccessOption:
          uniqueUsernameFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RegisterFormState = _$RegisterFormStateTearOff();

/// @nodoc
mixin _$RegisterFormState {
  EmailAddress get emailAddress;
  Password get password;
  Username get username;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<AuthFailure, Unit>> get registerFailureOrSuccessOption;
  Option<Either<AuthFailure, Unit>> get uniqueUsernameFailureOrSuccessOption;

  $RegisterFormStateCopyWith<RegisterFormState> get copyWith;
}

/// @nodoc
abstract class $RegisterFormStateCopyWith<$Res> {
  factory $RegisterFormStateCopyWith(
          RegisterFormState value, $Res Function(RegisterFormState) then) =
      _$RegisterFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      Username username,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> registerFailureOrSuccessOption,
      Option<Either<AuthFailure, Unit>> uniqueUsernameFailureOrSuccessOption});
}

/// @nodoc
class _$RegisterFormStateCopyWithImpl<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  _$RegisterFormStateCopyWithImpl(this._value, this._then);

  final RegisterFormState _value;
  // ignore: unused_field
  final $Res Function(RegisterFormState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object username = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object registerFailureOrSuccessOption = freezed,
    Object uniqueUsernameFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      username: username == freezed ? _value.username : username as Username,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      registerFailureOrSuccessOption: registerFailureOrSuccessOption == freezed
          ? _value.registerFailureOrSuccessOption
          : registerFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
      uniqueUsernameFailureOrSuccessOption:
          uniqueUsernameFailureOrSuccessOption == freezed
              ? _value.uniqueUsernameFailureOrSuccessOption
              : uniqueUsernameFailureOrSuccessOption
                  as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$RegisterFormStateCopyWith<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  factory _$RegisterFormStateCopyWith(
          _RegisterFormState value, $Res Function(_RegisterFormState) then) =
      __$RegisterFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      Username username,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> registerFailureOrSuccessOption,
      Option<Either<AuthFailure, Unit>> uniqueUsernameFailureOrSuccessOption});
}

/// @nodoc
class __$RegisterFormStateCopyWithImpl<$Res>
    extends _$RegisterFormStateCopyWithImpl<$Res>
    implements _$RegisterFormStateCopyWith<$Res> {
  __$RegisterFormStateCopyWithImpl(
      _RegisterFormState _value, $Res Function(_RegisterFormState) _then)
      : super(_value, (v) => _then(v as _RegisterFormState));

  @override
  _RegisterFormState get _value => super._value as _RegisterFormState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object username = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object registerFailureOrSuccessOption = freezed,
    Object uniqueUsernameFailureOrSuccessOption = freezed,
  }) {
    return _then(_RegisterFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      username: username == freezed ? _value.username : username as Username,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      registerFailureOrSuccessOption: registerFailureOrSuccessOption == freezed
          ? _value.registerFailureOrSuccessOption
          : registerFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
      uniqueUsernameFailureOrSuccessOption:
          uniqueUsernameFailureOrSuccessOption == freezed
              ? _value.uniqueUsernameFailureOrSuccessOption
              : uniqueUsernameFailureOrSuccessOption
                  as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_RegisterFormState implements _RegisterFormState {
  const _$_RegisterFormState(
      {@required this.emailAddress,
      @required this.password,
      @required this.username,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.registerFailureOrSuccessOption,
      @required this.uniqueUsernameFailureOrSuccessOption})
      : assert(emailAddress != null),
        assert(password != null),
        assert(username != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(registerFailureOrSuccessOption != null),
        assert(uniqueUsernameFailureOrSuccessOption != null);

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final Username username;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> registerFailureOrSuccessOption;
  @override
  final Option<Either<AuthFailure, Unit>> uniqueUsernameFailureOrSuccessOption;

  @override
  String toString() {
    return 'RegisterFormState(emailAddress: $emailAddress, password: $password, username: $username, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, registerFailureOrSuccessOption: $registerFailureOrSuccessOption, uniqueUsernameFailureOrSuccessOption: $uniqueUsernameFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterFormState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.registerFailureOrSuccessOption,
                    registerFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.registerFailureOrSuccessOption,
                    registerFailureOrSuccessOption)) &&
            (identical(other.uniqueUsernameFailureOrSuccessOption,
                    uniqueUsernameFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.uniqueUsernameFailureOrSuccessOption,
                    uniqueUsernameFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(registerFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(uniqueUsernameFailureOrSuccessOption);

  @override
  _$RegisterFormStateCopyWith<_RegisterFormState> get copyWith =>
      __$RegisterFormStateCopyWithImpl<_RegisterFormState>(this, _$identity);
}

abstract class _RegisterFormState implements RegisterFormState {
  const factory _RegisterFormState(
      {@required
          EmailAddress emailAddress,
      @required
          Password password,
      @required
          Username username,
      @required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<AuthFailure, Unit>> registerFailureOrSuccessOption,
      @required
          Option<Either<AuthFailure, Unit>>
              uniqueUsernameFailureOrSuccessOption}) = _$_RegisterFormState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  Username get username;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get registerFailureOrSuccessOption;
  @override
  Option<Either<AuthFailure, Unit>> get uniqueUsernameFailureOrSuccessOption;
  @override
  _$RegisterFormStateCopyWith<_RegisterFormState> get copyWith;
}
