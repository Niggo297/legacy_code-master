// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'abrechnung_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AbrechnungSettings _$AbrechnungSettingsFromJson(Map<String, dynamic> json) {
  return _AbrechnungSettings.fromJson(json);
}

/// @nodoc
class _$AbrechnungSettingsTearOff {
  const _$AbrechnungSettingsTearOff();

  _AbrechnungSettings call(
      {List<Kunde> kunden = const <Kunde>[],
      List<Taetigkeit> taetigkeiten = const <Taetigkeit>[],
      int rundenMinuten = 15,
      int rundenRichtung = 0}) {
    return _AbrechnungSettings(
      kunden: kunden,
      taetigkeiten: taetigkeiten,
      rundenMinuten: rundenMinuten,
      rundenRichtung: rundenRichtung,
    );
  }

  AbrechnungSettings fromJson(Map<String, Object?> json) {
    return AbrechnungSettings.fromJson(json);
  }
}

/// @nodoc
const $AbrechnungSettings = _$AbrechnungSettingsTearOff();

/// @nodoc
mixin _$AbrechnungSettings {
  List<Kunde> get kunden => throw _privateConstructorUsedError;
  List<Taetigkeit> get taetigkeiten => throw _privateConstructorUsedError;
  int get rundenMinuten => throw _privateConstructorUsedError;
  int get rundenRichtung => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbrechnungSettingsCopyWith<AbrechnungSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbrechnungSettingsCopyWith<$Res> {
  factory $AbrechnungSettingsCopyWith(
          AbrechnungSettings value, $Res Function(AbrechnungSettings) then) =
      _$AbrechnungSettingsCopyWithImpl<$Res>;
  $Res call(
      {List<Kunde> kunden,
      List<Taetigkeit> taetigkeiten,
      int rundenMinuten,
      int rundenRichtung});
}

/// @nodoc
class _$AbrechnungSettingsCopyWithImpl<$Res>
    implements $AbrechnungSettingsCopyWith<$Res> {
  _$AbrechnungSettingsCopyWithImpl(this._value, this._then);

  final AbrechnungSettings _value;
  // ignore: unused_field
  final $Res Function(AbrechnungSettings) _then;

  @override
  $Res call({
    Object? kunden = freezed,
    Object? taetigkeiten = freezed,
    Object? rundenMinuten = freezed,
    Object? rundenRichtung = freezed,
  }) {
    return _then(_value.copyWith(
      kunden: kunden == freezed
          ? _value.kunden
          : kunden // ignore: cast_nullable_to_non_nullable
              as List<Kunde>,
      taetigkeiten: taetigkeiten == freezed
          ? _value.taetigkeiten
          : taetigkeiten // ignore: cast_nullable_to_non_nullable
              as List<Taetigkeit>,
      rundenMinuten: rundenMinuten == freezed
          ? _value.rundenMinuten
          : rundenMinuten // ignore: cast_nullable_to_non_nullable
              as int,
      rundenRichtung: rundenRichtung == freezed
          ? _value.rundenRichtung
          : rundenRichtung // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AbrechnungSettingsCopyWith<$Res>
    implements $AbrechnungSettingsCopyWith<$Res> {
  factory _$AbrechnungSettingsCopyWith(
          _AbrechnungSettings value, $Res Function(_AbrechnungSettings) then) =
      __$AbrechnungSettingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Kunde> kunden,
      List<Taetigkeit> taetigkeiten,
      int rundenMinuten,
      int rundenRichtung});
}

/// @nodoc
class __$AbrechnungSettingsCopyWithImpl<$Res>
    extends _$AbrechnungSettingsCopyWithImpl<$Res>
    implements _$AbrechnungSettingsCopyWith<$Res> {
  __$AbrechnungSettingsCopyWithImpl(
      _AbrechnungSettings _value, $Res Function(_AbrechnungSettings) _then)
      : super(_value, (v) => _then(v as _AbrechnungSettings));

  @override
  _AbrechnungSettings get _value => super._value as _AbrechnungSettings;

  @override
  $Res call({
    Object? kunden = freezed,
    Object? taetigkeiten = freezed,
    Object? rundenMinuten = freezed,
    Object? rundenRichtung = freezed,
  }) {
    return _then(_AbrechnungSettings(
      kunden: kunden == freezed
          ? _value.kunden
          : kunden // ignore: cast_nullable_to_non_nullable
              as List<Kunde>,
      taetigkeiten: taetigkeiten == freezed
          ? _value.taetigkeiten
          : taetigkeiten // ignore: cast_nullable_to_non_nullable
              as List<Taetigkeit>,
      rundenMinuten: rundenMinuten == freezed
          ? _value.rundenMinuten
          : rundenMinuten // ignore: cast_nullable_to_non_nullable
              as int,
      rundenRichtung: rundenRichtung == freezed
          ? _value.rundenRichtung
          : rundenRichtung // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AbrechnungSettings extends _AbrechnungSettings
    with DiagnosticableTreeMixin {
  const _$_AbrechnungSettings(
      {this.kunden = const <Kunde>[],
      this.taetigkeiten = const <Taetigkeit>[],
      this.rundenMinuten = 15,
      this.rundenRichtung = 0})
      : super._();

  factory _$_AbrechnungSettings.fromJson(Map<String, dynamic> json) =>
      _$$_AbrechnungSettingsFromJson(json);

  @JsonKey()
  @override
  final List<Kunde> kunden;
  @JsonKey()
  @override
  final List<Taetigkeit> taetigkeiten;
  @JsonKey()
  @override
  final int rundenMinuten;
  @JsonKey()
  @override
  final int rundenRichtung;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbrechnungSettings(kunden: $kunden, taetigkeiten: $taetigkeiten, rundenMinuten: $rundenMinuten, rundenRichtung: $rundenRichtung)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbrechnungSettings'))
      ..add(DiagnosticsProperty('kunden', kunden))
      ..add(DiagnosticsProperty('taetigkeiten', taetigkeiten))
      ..add(DiagnosticsProperty('rundenMinuten', rundenMinuten))
      ..add(DiagnosticsProperty('rundenRichtung', rundenRichtung));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AbrechnungSettings &&
            const DeepCollectionEquality().equals(other.kunden, kunden) &&
            const DeepCollectionEquality()
                .equals(other.taetigkeiten, taetigkeiten) &&
            const DeepCollectionEquality()
                .equals(other.rundenMinuten, rundenMinuten) &&
            const DeepCollectionEquality()
                .equals(other.rundenRichtung, rundenRichtung));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(kunden),
      const DeepCollectionEquality().hash(taetigkeiten),
      const DeepCollectionEquality().hash(rundenMinuten),
      const DeepCollectionEquality().hash(rundenRichtung));

  @JsonKey(ignore: true)
  @override
  _$AbrechnungSettingsCopyWith<_AbrechnungSettings> get copyWith =>
      __$AbrechnungSettingsCopyWithImpl<_AbrechnungSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AbrechnungSettingsToJson(this);
  }
}

abstract class _AbrechnungSettings extends AbrechnungSettings {
  const factory _AbrechnungSettings(
      {List<Kunde> kunden,
      List<Taetigkeit> taetigkeiten,
      int rundenMinuten,
      int rundenRichtung}) = _$_AbrechnungSettings;
  const _AbrechnungSettings._() : super._();

  factory _AbrechnungSettings.fromJson(Map<String, dynamic> json) =
      _$_AbrechnungSettings.fromJson;

  @override
  List<Kunde> get kunden;
  @override
  List<Taetigkeit> get taetigkeiten;
  @override
  int get rundenMinuten;
  @override
  int get rundenRichtung;
  @override
  @JsonKey(ignore: true)
  _$AbrechnungSettingsCopyWith<_AbrechnungSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
