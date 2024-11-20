// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'einsatz.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Einsatz _$EinsatzFromJson(Map<String, dynamic> json) {
  return _Einsatz.fromJson(json);
}

/// @nodoc
class _$EinsatzTearOff {
  const _$EinsatzTearOff();

  _Einsatz call({required String taetigkeitName, required String kundeName}) {
    return _Einsatz(
      taetigkeitName: taetigkeitName,
      kundeName: kundeName,
    );
  }

  Einsatz fromJson(Map<String, Object?> json) {
    return Einsatz.fromJson(json);
  }
}

/// @nodoc
const $Einsatz = _$EinsatzTearOff();

/// @nodoc
mixin _$Einsatz {
  String get taetigkeitName => throw _privateConstructorUsedError;
  String get kundeName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EinsatzCopyWith<Einsatz> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EinsatzCopyWith<$Res> {
  factory $EinsatzCopyWith(Einsatz value, $Res Function(Einsatz) then) =
      _$EinsatzCopyWithImpl<$Res>;
  $Res call({String taetigkeitName, String kundeName});
}

/// @nodoc
class _$EinsatzCopyWithImpl<$Res> implements $EinsatzCopyWith<$Res> {
  _$EinsatzCopyWithImpl(this._value, this._then);

  final Einsatz _value;
  // ignore: unused_field
  final $Res Function(Einsatz) _then;

  @override
  $Res call({
    Object? taetigkeitName = freezed,
    Object? kundeName = freezed,
  }) {
    return _then(_value.copyWith(
      taetigkeitName: taetigkeitName == freezed
          ? _value.taetigkeitName
          : taetigkeitName // ignore: cast_nullable_to_non_nullable
              as String,
      kundeName: kundeName == freezed
          ? _value.kundeName
          : kundeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EinsatzCopyWith<$Res> implements $EinsatzCopyWith<$Res> {
  factory _$EinsatzCopyWith(_Einsatz value, $Res Function(_Einsatz) then) =
      __$EinsatzCopyWithImpl<$Res>;
  @override
  $Res call({String taetigkeitName, String kundeName});
}

/// @nodoc
class __$EinsatzCopyWithImpl<$Res> extends _$EinsatzCopyWithImpl<$Res>
    implements _$EinsatzCopyWith<$Res> {
  __$EinsatzCopyWithImpl(_Einsatz _value, $Res Function(_Einsatz) _then)
      : super(_value, (v) => _then(v as _Einsatz));

  @override
  _Einsatz get _value => super._value as _Einsatz;

  @override
  $Res call({
    Object? taetigkeitName = freezed,
    Object? kundeName = freezed,
  }) {
    return _then(_Einsatz(
      taetigkeitName: taetigkeitName == freezed
          ? _value.taetigkeitName
          : taetigkeitName // ignore: cast_nullable_to_non_nullable
              as String,
      kundeName: kundeName == freezed
          ? _value.kundeName
          : kundeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Einsatz with DiagnosticableTreeMixin implements _Einsatz {
  const _$_Einsatz({required this.taetigkeitName, required this.kundeName});

  factory _$_Einsatz.fromJson(Map<String, dynamic> json) =>
      _$$_EinsatzFromJson(json);

  @override
  final String taetigkeitName;
  @override
  final String kundeName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Einsatz(taetigkeitName: $taetigkeitName, kundeName: $kundeName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Einsatz'))
      ..add(DiagnosticsProperty('taetigkeitName', taetigkeitName))
      ..add(DiagnosticsProperty('kundeName', kundeName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Einsatz &&
            const DeepCollectionEquality()
                .equals(other.taetigkeitName, taetigkeitName) &&
            const DeepCollectionEquality().equals(other.kundeName, kundeName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(taetigkeitName),
      const DeepCollectionEquality().hash(kundeName));

  @JsonKey(ignore: true)
  @override
  _$EinsatzCopyWith<_Einsatz> get copyWith =>
      __$EinsatzCopyWithImpl<_Einsatz>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EinsatzToJson(this);
  }
}

abstract class _Einsatz implements Einsatz {
  const factory _Einsatz(
      {required String taetigkeitName, required String kundeName}) = _$_Einsatz;

  factory _Einsatz.fromJson(Map<String, dynamic> json) = _$_Einsatz.fromJson;

  @override
  String get taetigkeitName;
  @override
  String get kundeName;
  @override
  @JsonKey(ignore: true)
  _$EinsatzCopyWith<_Einsatz> get copyWith =>
      throw _privateConstructorUsedError;
}
