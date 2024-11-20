// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'taetigkeit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Taetigkeit _$TaetigkeitFromJson(Map<String, dynamic> json) {
  return _Taetigkeit.fromJson(json);
}

/// @nodoc
class _$TaetigkeitTearOff {
  const _$TaetigkeitTearOff();

  _Taetigkeit call({required String name, required int kostensatz}) {
    return _Taetigkeit(
      name: name,
      kostensatz: kostensatz,
    );
  }

  Taetigkeit fromJson(Map<String, Object?> json) {
    return Taetigkeit.fromJson(json);
  }
}

/// @nodoc
const $Taetigkeit = _$TaetigkeitTearOff();

/// @nodoc
mixin _$Taetigkeit {
  String get name => throw _privateConstructorUsedError;
  int get kostensatz => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaetigkeitCopyWith<Taetigkeit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaetigkeitCopyWith<$Res> {
  factory $TaetigkeitCopyWith(
          Taetigkeit value, $Res Function(Taetigkeit) then) =
      _$TaetigkeitCopyWithImpl<$Res>;
  $Res call({String name, int kostensatz});
}

/// @nodoc
class _$TaetigkeitCopyWithImpl<$Res> implements $TaetigkeitCopyWith<$Res> {
  _$TaetigkeitCopyWithImpl(this._value, this._then);

  final Taetigkeit _value;
  // ignore: unused_field
  final $Res Function(Taetigkeit) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? kostensatz = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      kostensatz: kostensatz == freezed
          ? _value.kostensatz
          : kostensatz // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TaetigkeitCopyWith<$Res> implements $TaetigkeitCopyWith<$Res> {
  factory _$TaetigkeitCopyWith(
          _Taetigkeit value, $Res Function(_Taetigkeit) then) =
      __$TaetigkeitCopyWithImpl<$Res>;
  @override
  $Res call({String name, int kostensatz});
}

/// @nodoc
class __$TaetigkeitCopyWithImpl<$Res> extends _$TaetigkeitCopyWithImpl<$Res>
    implements _$TaetigkeitCopyWith<$Res> {
  __$TaetigkeitCopyWithImpl(
      _Taetigkeit _value, $Res Function(_Taetigkeit) _then)
      : super(_value, (v) => _then(v as _Taetigkeit));

  @override
  _Taetigkeit get _value => super._value as _Taetigkeit;

  @override
  $Res call({
    Object? name = freezed,
    Object? kostensatz = freezed,
  }) {
    return _then(_Taetigkeit(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      kostensatz: kostensatz == freezed
          ? _value.kostensatz
          : kostensatz // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Taetigkeit extends _Taetigkeit with DiagnosticableTreeMixin {
  const _$_Taetigkeit({required this.name, required this.kostensatz})
      : super._();

  factory _$_Taetigkeit.fromJson(Map<String, dynamic> json) =>
      _$$_TaetigkeitFromJson(json);

  @override
  final String name;
  @override
  final int kostensatz;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Taetigkeit(name: $name, kostensatz: $kostensatz)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Taetigkeit'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('kostensatz', kostensatz));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Taetigkeit &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.kostensatz, kostensatz));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(kostensatz));

  @JsonKey(ignore: true)
  @override
  _$TaetigkeitCopyWith<_Taetigkeit> get copyWith =>
      __$TaetigkeitCopyWithImpl<_Taetigkeit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaetigkeitToJson(this);
  }
}

abstract class _Taetigkeit extends Taetigkeit {
  const factory _Taetigkeit({required String name, required int kostensatz}) =
      _$_Taetigkeit;
  const _Taetigkeit._() : super._();

  factory _Taetigkeit.fromJson(Map<String, dynamic> json) =
      _$_Taetigkeit.fromJson;

  @override
  String get name;
  @override
  int get kostensatz;
  @override
  @JsonKey(ignore: true)
  _$TaetigkeitCopyWith<_Taetigkeit> get copyWith =>
      throw _privateConstructorUsedError;
}
