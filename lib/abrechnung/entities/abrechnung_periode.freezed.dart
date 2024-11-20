// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'abrechnung_periode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AbrechnungPeriode _$AbrechnungPeriodeFromJson(Map<String, dynamic> json) {
  return _AbrechnungPeriode.fromJson(json);
}

/// @nodoc
class _$AbrechnungPeriodeTearOff {
  const _$AbrechnungPeriodeTearOff();

  _AbrechnungPeriode call(
      {List<Schicht> schichten = const <Schicht>[Schicht()]}) {
    return _AbrechnungPeriode(
      schichten: schichten,
    );
  }

  AbrechnungPeriode fromJson(Map<String, Object?> json) {
    return AbrechnungPeriode.fromJson(json);
  }
}

/// @nodoc
const $AbrechnungPeriode = _$AbrechnungPeriodeTearOff();

/// @nodoc
mixin _$AbrechnungPeriode {
  List<Schicht> get schichten => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbrechnungPeriodeCopyWith<AbrechnungPeriode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbrechnungPeriodeCopyWith<$Res> {
  factory $AbrechnungPeriodeCopyWith(
          AbrechnungPeriode value, $Res Function(AbrechnungPeriode) then) =
      _$AbrechnungPeriodeCopyWithImpl<$Res>;
  $Res call({List<Schicht> schichten});
}

/// @nodoc
class _$AbrechnungPeriodeCopyWithImpl<$Res>
    implements $AbrechnungPeriodeCopyWith<$Res> {
  _$AbrechnungPeriodeCopyWithImpl(this._value, this._then);

  final AbrechnungPeriode _value;
  // ignore: unused_field
  final $Res Function(AbrechnungPeriode) _then;

  @override
  $Res call({
    Object? schichten = freezed,
  }) {
    return _then(_value.copyWith(
      schichten: schichten == freezed
          ? _value.schichten
          : schichten // ignore: cast_nullable_to_non_nullable
              as List<Schicht>,
    ));
  }
}

/// @nodoc
abstract class _$AbrechnungPeriodeCopyWith<$Res>
    implements $AbrechnungPeriodeCopyWith<$Res> {
  factory _$AbrechnungPeriodeCopyWith(
          _AbrechnungPeriode value, $Res Function(_AbrechnungPeriode) then) =
      __$AbrechnungPeriodeCopyWithImpl<$Res>;
  @override
  $Res call({List<Schicht> schichten});
}

/// @nodoc
class __$AbrechnungPeriodeCopyWithImpl<$Res>
    extends _$AbrechnungPeriodeCopyWithImpl<$Res>
    implements _$AbrechnungPeriodeCopyWith<$Res> {
  __$AbrechnungPeriodeCopyWithImpl(
      _AbrechnungPeriode _value, $Res Function(_AbrechnungPeriode) _then)
      : super(_value, (v) => _then(v as _AbrechnungPeriode));

  @override
  _AbrechnungPeriode get _value => super._value as _AbrechnungPeriode;

  @override
  $Res call({
    Object? schichten = freezed,
  }) {
    return _then(_AbrechnungPeriode(
      schichten: schichten == freezed
          ? _value.schichten
          : schichten // ignore: cast_nullable_to_non_nullable
              as List<Schicht>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AbrechnungPeriode extends _AbrechnungPeriode
    with DiagnosticableTreeMixin {
  const _$_AbrechnungPeriode({this.schichten = const <Schicht>[Schicht()]})
      : super._();

  factory _$_AbrechnungPeriode.fromJson(Map<String, dynamic> json) =>
      _$$_AbrechnungPeriodeFromJson(json);

  @JsonKey()
  @override
  final List<Schicht> schichten;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbrechnungPeriode(schichten: $schichten)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbrechnungPeriode'))
      ..add(DiagnosticsProperty('schichten', schichten));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AbrechnungPeriode &&
            const DeepCollectionEquality().equals(other.schichten, schichten));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(schichten));

  @JsonKey(ignore: true)
  @override
  _$AbrechnungPeriodeCopyWith<_AbrechnungPeriode> get copyWith =>
      __$AbrechnungPeriodeCopyWithImpl<_AbrechnungPeriode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AbrechnungPeriodeToJson(this);
  }
}

abstract class _AbrechnungPeriode extends AbrechnungPeriode {
  const factory _AbrechnungPeriode({List<Schicht> schichten}) =
      _$_AbrechnungPeriode;
  const _AbrechnungPeriode._() : super._();

  factory _AbrechnungPeriode.fromJson(Map<String, dynamic> json) =
      _$_AbrechnungPeriode.fromJson;

  @override
  List<Schicht> get schichten;
  @override
  @JsonKey(ignore: true)
  _$AbrechnungPeriodeCopyWith<_AbrechnungPeriode> get copyWith =>
      throw _privateConstructorUsedError;
}
