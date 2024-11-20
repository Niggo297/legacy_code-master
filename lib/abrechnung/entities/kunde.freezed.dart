// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'kunde.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Kunde _$KundeFromJson(Map<String, dynamic> json) {
  return _Kunde.fromJson(json);
}

/// @nodoc
class _$KundeTearOff {
  const _$KundeTearOff();

  _Kunde call(
      {required String name,
      List<Taetigkeit> abwTaetigeiten = const <Taetigkeit>[]}) {
    return _Kunde(
      name: name,
      abwTaetigeiten: abwTaetigeiten,
    );
  }

  Kunde fromJson(Map<String, Object?> json) {
    return Kunde.fromJson(json);
  }
}

/// @nodoc
const $Kunde = _$KundeTearOff();

/// @nodoc
mixin _$Kunde {
  String get name => throw _privateConstructorUsedError;
  List<Taetigkeit> get abwTaetigeiten => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KundeCopyWith<Kunde> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KundeCopyWith<$Res> {
  factory $KundeCopyWith(Kunde value, $Res Function(Kunde) then) =
      _$KundeCopyWithImpl<$Res>;
  $Res call({String name, List<Taetigkeit> abwTaetigeiten});
}

/// @nodoc
class _$KundeCopyWithImpl<$Res> implements $KundeCopyWith<$Res> {
  _$KundeCopyWithImpl(this._value, this._then);

  final Kunde _value;
  // ignore: unused_field
  final $Res Function(Kunde) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? abwTaetigeiten = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      abwTaetigeiten: abwTaetigeiten == freezed
          ? _value.abwTaetigeiten
          : abwTaetigeiten // ignore: cast_nullable_to_non_nullable
              as List<Taetigkeit>,
    ));
  }
}

/// @nodoc
abstract class _$KundeCopyWith<$Res> implements $KundeCopyWith<$Res> {
  factory _$KundeCopyWith(_Kunde value, $Res Function(_Kunde) then) =
      __$KundeCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<Taetigkeit> abwTaetigeiten});
}

/// @nodoc
class __$KundeCopyWithImpl<$Res> extends _$KundeCopyWithImpl<$Res>
    implements _$KundeCopyWith<$Res> {
  __$KundeCopyWithImpl(_Kunde _value, $Res Function(_Kunde) _then)
      : super(_value, (v) => _then(v as _Kunde));

  @override
  _Kunde get _value => super._value as _Kunde;

  @override
  $Res call({
    Object? name = freezed,
    Object? abwTaetigeiten = freezed,
  }) {
    return _then(_Kunde(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      abwTaetigeiten: abwTaetigeiten == freezed
          ? _value.abwTaetigeiten
          : abwTaetigeiten // ignore: cast_nullable_to_non_nullable
              as List<Taetigkeit>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Kunde extends _Kunde with DiagnosticableTreeMixin {
  const _$_Kunde(
      {required this.name, this.abwTaetigeiten = const <Taetigkeit>[]})
      : super._();

  factory _$_Kunde.fromJson(Map<String, dynamic> json) =>
      _$$_KundeFromJson(json);

  @override
  final String name;
  @JsonKey()
  @override
  final List<Taetigkeit> abwTaetigeiten;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Kunde(name: $name, abwTaetigeiten: $abwTaetigeiten)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Kunde'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('abwTaetigeiten', abwTaetigeiten));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Kunde &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.abwTaetigeiten, abwTaetigeiten));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(abwTaetigeiten));

  @JsonKey(ignore: true)
  @override
  _$KundeCopyWith<_Kunde> get copyWith =>
      __$KundeCopyWithImpl<_Kunde>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KundeToJson(this);
  }
}

abstract class _Kunde extends Kunde {
  const factory _Kunde(
      {required String name, List<Taetigkeit> abwTaetigeiten}) = _$_Kunde;
  const _Kunde._() : super._();

  factory _Kunde.fromJson(Map<String, dynamic> json) = _$_Kunde.fromJson;

  @override
  String get name;
  @override
  List<Taetigkeit> get abwTaetigeiten;
  @override
  @JsonKey(ignore: true)
  _$KundeCopyWith<_Kunde> get copyWith => throw _privateConstructorUsedError;
}
