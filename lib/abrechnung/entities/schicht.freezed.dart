// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schicht.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Schicht _$SchichtFromJson(Map<String, dynamic> json) {
  return _Schicht.fromJson(json);
}

/// @nodoc
class _$SchichtTearOff {
  const _$SchichtTearOff();

  _Schicht call({List<Stempel> stempels = const <Stempel>[]}) {
    return _Schicht(
      stempels: stempels,
    );
  }

  Schicht fromJson(Map<String, Object?> json) {
    return Schicht.fromJson(json);
  }
}

/// @nodoc
const $Schicht = _$SchichtTearOff();

/// @nodoc
mixin _$Schicht {
  List<Stempel> get stempels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchichtCopyWith<Schicht> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchichtCopyWith<$Res> {
  factory $SchichtCopyWith(Schicht value, $Res Function(Schicht) then) =
      _$SchichtCopyWithImpl<$Res>;
  $Res call({List<Stempel> stempels});
}

/// @nodoc
class _$SchichtCopyWithImpl<$Res> implements $SchichtCopyWith<$Res> {
  _$SchichtCopyWithImpl(this._value, this._then);

  final Schicht _value;
  // ignore: unused_field
  final $Res Function(Schicht) _then;

  @override
  $Res call({
    Object? stempels = freezed,
  }) {
    return _then(_value.copyWith(
      stempels: stempels == freezed
          ? _value.stempels
          : stempels // ignore: cast_nullable_to_non_nullable
              as List<Stempel>,
    ));
  }
}

/// @nodoc
abstract class _$SchichtCopyWith<$Res> implements $SchichtCopyWith<$Res> {
  factory _$SchichtCopyWith(_Schicht value, $Res Function(_Schicht) then) =
      __$SchichtCopyWithImpl<$Res>;
  @override
  $Res call({List<Stempel> stempels});
}

/// @nodoc
class __$SchichtCopyWithImpl<$Res> extends _$SchichtCopyWithImpl<$Res>
    implements _$SchichtCopyWith<$Res> {
  __$SchichtCopyWithImpl(_Schicht _value, $Res Function(_Schicht) _then)
      : super(_value, (v) => _then(v as _Schicht));

  @override
  _Schicht get _value => super._value as _Schicht;

  @override
  $Res call({
    Object? stempels = freezed,
  }) {
    return _then(_Schicht(
      stempels: stempels == freezed
          ? _value.stempels
          : stempels // ignore: cast_nullable_to_non_nullable
              as List<Stempel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Schicht extends _Schicht with DiagnosticableTreeMixin {
  const _$_Schicht({this.stempels = const <Stempel>[]}) : super._();

  factory _$_Schicht.fromJson(Map<String, dynamic> json) =>
      _$$_SchichtFromJson(json);

  @JsonKey()
  @override
  final List<Stempel> stempels;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Schicht(stempels: $stempels)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Schicht'))
      ..add(DiagnosticsProperty('stempels', stempels));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Schicht &&
            const DeepCollectionEquality().equals(other.stempels, stempels));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(stempels));

  @JsonKey(ignore: true)
  @override
  _$SchichtCopyWith<_Schicht> get copyWith =>
      __$SchichtCopyWithImpl<_Schicht>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SchichtToJson(this);
  }
}

abstract class _Schicht extends Schicht {
  const factory _Schicht({List<Stempel> stempels}) = _$_Schicht;
  const _Schicht._() : super._();

  factory _Schicht.fromJson(Map<String, dynamic> json) = _$_Schicht.fromJson;

  @override
  List<Stempel> get stempels;
  @override
  @JsonKey(ignore: true)
  _$SchichtCopyWith<_Schicht> get copyWith =>
      throw _privateConstructorUsedError;
}
