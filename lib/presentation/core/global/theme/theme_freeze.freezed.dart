// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'theme_freeze.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ThemeTearOff {
  const _$ThemeTearOff();

// ignore: unused_element
  _Theme call(AppTheme appTheme) {
    return _Theme(
      appTheme,
    );
  }
}

// ignore: unused_element
const $Theme = _$ThemeTearOff();

mixin _$Theme {
  AppTheme get appTheme;

  $ThemeCopyWith<Theme> get copyWith;
}

abstract class $ThemeCopyWith<$Res> {
  factory $ThemeCopyWith(Theme value, $Res Function(Theme) then) =
      _$ThemeCopyWithImpl<$Res>;
  $Res call({AppTheme appTheme});
}

class _$ThemeCopyWithImpl<$Res> implements $ThemeCopyWith<$Res> {
  _$ThemeCopyWithImpl(this._value, this._then);

  final Theme _value;
  // ignore: unused_field
  final $Res Function(Theme) _then;

  @override
  $Res call({
    Object appTheme = freezed,
  }) {
    return _then(_value.copyWith(
      appTheme: appTheme == freezed ? _value.appTheme : appTheme as AppTheme,
    ));
  }
}

abstract class _$ThemeCopyWith<$Res> implements $ThemeCopyWith<$Res> {
  factory _$ThemeCopyWith(_Theme value, $Res Function(_Theme) then) =
      __$ThemeCopyWithImpl<$Res>;
  @override
  $Res call({AppTheme appTheme});
}

class __$ThemeCopyWithImpl<$Res> extends _$ThemeCopyWithImpl<$Res>
    implements _$ThemeCopyWith<$Res> {
  __$ThemeCopyWithImpl(_Theme _value, $Res Function(_Theme) _then)
      : super(_value, (v) => _then(v as _Theme));

  @override
  _Theme get _value => super._value as _Theme;

  @override
  $Res call({
    Object appTheme = freezed,
  }) {
    return _then(_Theme(
      appTheme == freezed ? _value.appTheme : appTheme as AppTheme,
    ));
  }
}

class _$_Theme with DiagnosticableTreeMixin implements _Theme {
  const _$_Theme(this.appTheme) : assert(appTheme != null);

  @override
  final AppTheme appTheme;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Theme(appTheme: $appTheme)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Theme'))
      ..add(DiagnosticsProperty('appTheme', appTheme));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Theme &&
            (identical(other.appTheme, appTheme) ||
                const DeepCollectionEquality()
                    .equals(other.appTheme, appTheme)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(appTheme);

  @override
  _$ThemeCopyWith<_Theme> get copyWith =>
      __$ThemeCopyWithImpl<_Theme>(this, _$identity);
}

abstract class _Theme implements Theme {
  const factory _Theme(AppTheme appTheme) = _$_Theme;

  @override
  AppTheme get appTheme;
  @override
  _$ThemeCopyWith<_Theme> get copyWith;
}
