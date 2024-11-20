// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stempel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Stempel _$StempelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'arbeitszeit':
      return ArbeitszeitStempel.fromJson(json);
    case 'ende':
      return EndeStempel.fromJson(json);
    case 'fahrt':
      return FahrtStempel.fromJson(json);
    case 'pause':
      return PauseStempel.fromJson(json);
    case 'einsatz':
      return EinsatzStempel.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Stempel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$StempelTearOff {
  const _$StempelTearOff();

  ArbeitszeitStempel arbeitszeit(
      {required DateTime timestamp, required DateTime timestampEdited}) {
    return ArbeitszeitStempel(
      timestamp: timestamp,
      timestampEdited: timestampEdited,
    );
  }

  EndeStempel ende(
      {required DateTime timestamp, required DateTime timestampEdited}) {
    return EndeStempel(
      timestamp: timestamp,
      timestampEdited: timestampEdited,
    );
  }

  FahrtStempel fahrt(
      {required DateTime timestamp,
      required DateTime timestampEdited,
      Einsatz? einsatz}) {
    return FahrtStempel(
      timestamp: timestamp,
      timestampEdited: timestampEdited,
      einsatz: einsatz,
    );
  }

  PauseStempel pause(
      {required DateTime timestamp, required DateTime timestampEdited}) {
    return PauseStempel(
      timestamp: timestamp,
      timestampEdited: timestampEdited,
    );
  }

  EinsatzStempel einsatz(
      {required DateTime timestamp,
      required DateTime timestampEdited,
      required Einsatz einsatz}) {
    return EinsatzStempel(
      timestamp: timestamp,
      timestampEdited: timestampEdited,
      einsatz: einsatz,
    );
  }

  Stempel fromJson(Map<String, Object?> json) {
    return Stempel.fromJson(json);
  }
}

/// @nodoc
const $Stempel = _$StempelTearOff();

/// @nodoc
mixin _$Stempel {
  DateTime get timestamp => throw _privateConstructorUsedError;
  DateTime get timestampEdited => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime timestamp, DateTime timestampEdited)
        arbeitszeit,
    required TResult Function(DateTime timestamp, DateTime timestampEdited)
        ende,
    required TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz? einsatz)
        fahrt,
    required TResult Function(DateTime timestamp, DateTime timestampEdited)
        pause,
    required TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz einsatz)
        einsatz,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime timestamp, DateTime timestampEdited)? arbeitszeit,
    TResult Function(DateTime timestamp, DateTime timestampEdited)? ende,
    TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz? einsatz)?
        fahrt,
    TResult Function(DateTime timestamp, DateTime timestampEdited)? pause,
    TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz einsatz)?
        einsatz,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timestamp, DateTime timestampEdited)? arbeitszeit,
    TResult Function(DateTime timestamp, DateTime timestampEdited)? ende,
    TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz? einsatz)?
        fahrt,
    TResult Function(DateTime timestamp, DateTime timestampEdited)? pause,
    TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz einsatz)?
        einsatz,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArbeitszeitStempel value) arbeitszeit,
    required TResult Function(EndeStempel value) ende,
    required TResult Function(FahrtStempel value) fahrt,
    required TResult Function(PauseStempel value) pause,
    required TResult Function(EinsatzStempel value) einsatz,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ArbeitszeitStempel value)? arbeitszeit,
    TResult Function(EndeStempel value)? ende,
    TResult Function(FahrtStempel value)? fahrt,
    TResult Function(PauseStempel value)? pause,
    TResult Function(EinsatzStempel value)? einsatz,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArbeitszeitStempel value)? arbeitszeit,
    TResult Function(EndeStempel value)? ende,
    TResult Function(FahrtStempel value)? fahrt,
    TResult Function(PauseStempel value)? pause,
    TResult Function(EinsatzStempel value)? einsatz,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StempelCopyWith<Stempel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StempelCopyWith<$Res> {
  factory $StempelCopyWith(Stempel value, $Res Function(Stempel) then) =
      _$StempelCopyWithImpl<$Res>;
  $Res call({DateTime timestamp, DateTime timestampEdited});
}

/// @nodoc
class _$StempelCopyWithImpl<$Res> implements $StempelCopyWith<$Res> {
  _$StempelCopyWithImpl(this._value, this._then);

  final Stempel _value;
  // ignore: unused_field
  final $Res Function(Stempel) _then;

  @override
  $Res call({
    Object? timestamp = freezed,
    Object? timestampEdited = freezed,
  }) {
    return _then(_value.copyWith(
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timestampEdited: timestampEdited == freezed
          ? _value.timestampEdited
          : timestampEdited // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class $ArbeitszeitStempelCopyWith<$Res>
    implements $StempelCopyWith<$Res> {
  factory $ArbeitszeitStempelCopyWith(
          ArbeitszeitStempel value, $Res Function(ArbeitszeitStempel) then) =
      _$ArbeitszeitStempelCopyWithImpl<$Res>;
  @override
  $Res call({DateTime timestamp, DateTime timestampEdited});
}

/// @nodoc
class _$ArbeitszeitStempelCopyWithImpl<$Res> extends _$StempelCopyWithImpl<$Res>
    implements $ArbeitszeitStempelCopyWith<$Res> {
  _$ArbeitszeitStempelCopyWithImpl(
      ArbeitszeitStempel _value, $Res Function(ArbeitszeitStempel) _then)
      : super(_value, (v) => _then(v as ArbeitszeitStempel));

  @override
  ArbeitszeitStempel get _value => super._value as ArbeitszeitStempel;

  @override
  $Res call({
    Object? timestamp = freezed,
    Object? timestampEdited = freezed,
  }) {
    return _then(ArbeitszeitStempel(
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timestampEdited: timestampEdited == freezed
          ? _value.timestampEdited
          : timestampEdited // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArbeitszeitStempel extends ArbeitszeitStempel
    with DiagnosticableTreeMixin {
  _$ArbeitszeitStempel(
      {required this.timestamp, required this.timestampEdited, String? $type})
      : $type = $type ?? 'arbeitszeit',
        super._();

  factory _$ArbeitszeitStempel.fromJson(Map<String, dynamic> json) =>
      _$$ArbeitszeitStempelFromJson(json);

  @override
  final DateTime timestamp;
  @override
  final DateTime timestampEdited;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Stempel.arbeitszeit(timestamp: $timestamp, timestampEdited: $timestampEdited)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Stempel.arbeitszeit'))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('timestampEdited', timestampEdited));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ArbeitszeitStempel &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality()
                .equals(other.timestampEdited, timestampEdited));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(timestampEdited));

  @JsonKey(ignore: true)
  @override
  $ArbeitszeitStempelCopyWith<ArbeitszeitStempel> get copyWith =>
      _$ArbeitszeitStempelCopyWithImpl<ArbeitszeitStempel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime timestamp, DateTime timestampEdited)
        arbeitszeit,
    required TResult Function(DateTime timestamp, DateTime timestampEdited)
        ende,
    required TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz? einsatz)
        fahrt,
    required TResult Function(DateTime timestamp, DateTime timestampEdited)
        pause,
    required TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz einsatz)
        einsatz,
  }) {
    return arbeitszeit(timestamp, timestampEdited);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime timestamp, DateTime timestampEdited)? arbeitszeit,
    TResult Function(DateTime timestamp, DateTime timestampEdited)? ende,
    TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz? einsatz)?
        fahrt,
    TResult Function(DateTime timestamp, DateTime timestampEdited)? pause,
    TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz einsatz)?
        einsatz,
  }) {
    return arbeitszeit?.call(timestamp, timestampEdited);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timestamp, DateTime timestampEdited)? arbeitszeit,
    TResult Function(DateTime timestamp, DateTime timestampEdited)? ende,
    TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz? einsatz)?
        fahrt,
    TResult Function(DateTime timestamp, DateTime timestampEdited)? pause,
    TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz einsatz)?
        einsatz,
    required TResult orElse(),
  }) {
    if (arbeitszeit != null) {
      return arbeitszeit(timestamp, timestampEdited);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArbeitszeitStempel value) arbeitszeit,
    required TResult Function(EndeStempel value) ende,
    required TResult Function(FahrtStempel value) fahrt,
    required TResult Function(PauseStempel value) pause,
    required TResult Function(EinsatzStempel value) einsatz,
  }) {
    return arbeitszeit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ArbeitszeitStempel value)? arbeitszeit,
    TResult Function(EndeStempel value)? ende,
    TResult Function(FahrtStempel value)? fahrt,
    TResult Function(PauseStempel value)? pause,
    TResult Function(EinsatzStempel value)? einsatz,
  }) {
    return arbeitszeit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArbeitszeitStempel value)? arbeitszeit,
    TResult Function(EndeStempel value)? ende,
    TResult Function(FahrtStempel value)? fahrt,
    TResult Function(PauseStempel value)? pause,
    TResult Function(EinsatzStempel value)? einsatz,
    required TResult orElse(),
  }) {
    if (arbeitszeit != null) {
      return arbeitszeit(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ArbeitszeitStempelToJson(this);
  }
}

abstract class ArbeitszeitStempel extends Stempel {
  factory ArbeitszeitStempel(
      {required DateTime timestamp,
      required DateTime timestampEdited}) = _$ArbeitszeitStempel;
  ArbeitszeitStempel._() : super._();

  factory ArbeitszeitStempel.fromJson(Map<String, dynamic> json) =
      _$ArbeitszeitStempel.fromJson;

  @override
  DateTime get timestamp;
  @override
  DateTime get timestampEdited;
  @override
  @JsonKey(ignore: true)
  $ArbeitszeitStempelCopyWith<ArbeitszeitStempel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EndeStempelCopyWith<$Res> implements $StempelCopyWith<$Res> {
  factory $EndeStempelCopyWith(
          EndeStempel value, $Res Function(EndeStempel) then) =
      _$EndeStempelCopyWithImpl<$Res>;
  @override
  $Res call({DateTime timestamp, DateTime timestampEdited});
}

/// @nodoc
class _$EndeStempelCopyWithImpl<$Res> extends _$StempelCopyWithImpl<$Res>
    implements $EndeStempelCopyWith<$Res> {
  _$EndeStempelCopyWithImpl(
      EndeStempel _value, $Res Function(EndeStempel) _then)
      : super(_value, (v) => _then(v as EndeStempel));

  @override
  EndeStempel get _value => super._value as EndeStempel;

  @override
  $Res call({
    Object? timestamp = freezed,
    Object? timestampEdited = freezed,
  }) {
    return _then(EndeStempel(
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timestampEdited: timestampEdited == freezed
          ? _value.timestampEdited
          : timestampEdited // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EndeStempel extends EndeStempel with DiagnosticableTreeMixin {
  _$EndeStempel(
      {required this.timestamp, required this.timestampEdited, String? $type})
      : $type = $type ?? 'ende',
        super._();

  factory _$EndeStempel.fromJson(Map<String, dynamic> json) =>
      _$$EndeStempelFromJson(json);

  @override
  final DateTime timestamp;
  @override
  final DateTime timestampEdited;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Stempel.ende(timestamp: $timestamp, timestampEdited: $timestampEdited)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Stempel.ende'))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('timestampEdited', timestampEdited));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EndeStempel &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality()
                .equals(other.timestampEdited, timestampEdited));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(timestampEdited));

  @JsonKey(ignore: true)
  @override
  $EndeStempelCopyWith<EndeStempel> get copyWith =>
      _$EndeStempelCopyWithImpl<EndeStempel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime timestamp, DateTime timestampEdited)
        arbeitszeit,
    required TResult Function(DateTime timestamp, DateTime timestampEdited)
        ende,
    required TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz? einsatz)
        fahrt,
    required TResult Function(DateTime timestamp, DateTime timestampEdited)
        pause,
    required TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz einsatz)
        einsatz,
  }) {
    return ende(timestamp, timestampEdited);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime timestamp, DateTime timestampEdited)? arbeitszeit,
    TResult Function(DateTime timestamp, DateTime timestampEdited)? ende,
    TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz? einsatz)?
        fahrt,
    TResult Function(DateTime timestamp, DateTime timestampEdited)? pause,
    TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz einsatz)?
        einsatz,
  }) {
    return ende?.call(timestamp, timestampEdited);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timestamp, DateTime timestampEdited)? arbeitszeit,
    TResult Function(DateTime timestamp, DateTime timestampEdited)? ende,
    TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz? einsatz)?
        fahrt,
    TResult Function(DateTime timestamp, DateTime timestampEdited)? pause,
    TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz einsatz)?
        einsatz,
    required TResult orElse(),
  }) {
    if (ende != null) {
      return ende(timestamp, timestampEdited);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArbeitszeitStempel value) arbeitszeit,
    required TResult Function(EndeStempel value) ende,
    required TResult Function(FahrtStempel value) fahrt,
    required TResult Function(PauseStempel value) pause,
    required TResult Function(EinsatzStempel value) einsatz,
  }) {
    return ende(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ArbeitszeitStempel value)? arbeitszeit,
    TResult Function(EndeStempel value)? ende,
    TResult Function(FahrtStempel value)? fahrt,
    TResult Function(PauseStempel value)? pause,
    TResult Function(EinsatzStempel value)? einsatz,
  }) {
    return ende?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArbeitszeitStempel value)? arbeitszeit,
    TResult Function(EndeStempel value)? ende,
    TResult Function(FahrtStempel value)? fahrt,
    TResult Function(PauseStempel value)? pause,
    TResult Function(EinsatzStempel value)? einsatz,
    required TResult orElse(),
  }) {
    if (ende != null) {
      return ende(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EndeStempelToJson(this);
  }
}

abstract class EndeStempel extends Stempel {
  factory EndeStempel(
      {required DateTime timestamp,
      required DateTime timestampEdited}) = _$EndeStempel;
  EndeStempel._() : super._();

  factory EndeStempel.fromJson(Map<String, dynamic> json) =
      _$EndeStempel.fromJson;

  @override
  DateTime get timestamp;
  @override
  DateTime get timestampEdited;
  @override
  @JsonKey(ignore: true)
  $EndeStempelCopyWith<EndeStempel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FahrtStempelCopyWith<$Res> implements $StempelCopyWith<$Res> {
  factory $FahrtStempelCopyWith(
          FahrtStempel value, $Res Function(FahrtStempel) then) =
      _$FahrtStempelCopyWithImpl<$Res>;
  @override
  $Res call({DateTime timestamp, DateTime timestampEdited, Einsatz? einsatz});

  $EinsatzCopyWith<$Res>? get einsatz;
}

/// @nodoc
class _$FahrtStempelCopyWithImpl<$Res> extends _$StempelCopyWithImpl<$Res>
    implements $FahrtStempelCopyWith<$Res> {
  _$FahrtStempelCopyWithImpl(
      FahrtStempel _value, $Res Function(FahrtStempel) _then)
      : super(_value, (v) => _then(v as FahrtStempel));

  @override
  FahrtStempel get _value => super._value as FahrtStempel;

  @override
  $Res call({
    Object? timestamp = freezed,
    Object? timestampEdited = freezed,
    Object? einsatz = freezed,
  }) {
    return _then(FahrtStempel(
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timestampEdited: timestampEdited == freezed
          ? _value.timestampEdited
          : timestampEdited // ignore: cast_nullable_to_non_nullable
              as DateTime,
      einsatz: einsatz == freezed
          ? _value.einsatz
          : einsatz // ignore: cast_nullable_to_non_nullable
              as Einsatz?,
    ));
  }

  @override
  $EinsatzCopyWith<$Res>? get einsatz {
    if (_value.einsatz == null) {
      return null;
    }

    return $EinsatzCopyWith<$Res>(_value.einsatz!, (value) {
      return _then(_value.copyWith(einsatz: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FahrtStempel extends FahrtStempel with DiagnosticableTreeMixin {
  _$FahrtStempel(
      {required this.timestamp,
      required this.timestampEdited,
      this.einsatz,
      String? $type})
      : $type = $type ?? 'fahrt',
        super._();

  factory _$FahrtStempel.fromJson(Map<String, dynamic> json) =>
      _$$FahrtStempelFromJson(json);

  @override
  final DateTime timestamp;
  @override
  final DateTime timestampEdited;
  @override
  final Einsatz? einsatz;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Stempel.fahrt(timestamp: $timestamp, timestampEdited: $timestampEdited, einsatz: $einsatz)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Stempel.fahrt'))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('timestampEdited', timestampEdited))
      ..add(DiagnosticsProperty('einsatz', einsatz));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FahrtStempel &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality()
                .equals(other.timestampEdited, timestampEdited) &&
            const DeepCollectionEquality().equals(other.einsatz, einsatz));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(timestampEdited),
      const DeepCollectionEquality().hash(einsatz));

  @JsonKey(ignore: true)
  @override
  $FahrtStempelCopyWith<FahrtStempel> get copyWith =>
      _$FahrtStempelCopyWithImpl<FahrtStempel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime timestamp, DateTime timestampEdited)
        arbeitszeit,
    required TResult Function(DateTime timestamp, DateTime timestampEdited)
        ende,
    required TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz? einsatz)
        fahrt,
    required TResult Function(DateTime timestamp, DateTime timestampEdited)
        pause,
    required TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz einsatz)
        einsatz,
  }) {
    return fahrt(timestamp, timestampEdited, this.einsatz);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime timestamp, DateTime timestampEdited)? arbeitszeit,
    TResult Function(DateTime timestamp, DateTime timestampEdited)? ende,
    TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz? einsatz)?
        fahrt,
    TResult Function(DateTime timestamp, DateTime timestampEdited)? pause,
    TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz einsatz)?
        einsatz,
  }) {
    return fahrt?.call(timestamp, timestampEdited, this.einsatz);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timestamp, DateTime timestampEdited)? arbeitszeit,
    TResult Function(DateTime timestamp, DateTime timestampEdited)? ende,
    TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz? einsatz)?
        fahrt,
    TResult Function(DateTime timestamp, DateTime timestampEdited)? pause,
    TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz einsatz)?
        einsatz,
    required TResult orElse(),
  }) {
    if (fahrt != null) {
      return fahrt(timestamp, timestampEdited, this.einsatz);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArbeitszeitStempel value) arbeitszeit,
    required TResult Function(EndeStempel value) ende,
    required TResult Function(FahrtStempel value) fahrt,
    required TResult Function(PauseStempel value) pause,
    required TResult Function(EinsatzStempel value) einsatz,
  }) {
    return fahrt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ArbeitszeitStempel value)? arbeitszeit,
    TResult Function(EndeStempel value)? ende,
    TResult Function(FahrtStempel value)? fahrt,
    TResult Function(PauseStempel value)? pause,
    TResult Function(EinsatzStempel value)? einsatz,
  }) {
    return fahrt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArbeitszeitStempel value)? arbeitszeit,
    TResult Function(EndeStempel value)? ende,
    TResult Function(FahrtStempel value)? fahrt,
    TResult Function(PauseStempel value)? pause,
    TResult Function(EinsatzStempel value)? einsatz,
    required TResult orElse(),
  }) {
    if (fahrt != null) {
      return fahrt(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FahrtStempelToJson(this);
  }
}

abstract class FahrtStempel extends Stempel {
  factory FahrtStempel(
      {required DateTime timestamp,
      required DateTime timestampEdited,
      Einsatz? einsatz}) = _$FahrtStempel;
  FahrtStempel._() : super._();

  factory FahrtStempel.fromJson(Map<String, dynamic> json) =
      _$FahrtStempel.fromJson;

  @override
  DateTime get timestamp;
  @override
  DateTime get timestampEdited;
  Einsatz? get einsatz;
  @override
  @JsonKey(ignore: true)
  $FahrtStempelCopyWith<FahrtStempel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PauseStempelCopyWith<$Res> implements $StempelCopyWith<$Res> {
  factory $PauseStempelCopyWith(
          PauseStempel value, $Res Function(PauseStempel) then) =
      _$PauseStempelCopyWithImpl<$Res>;
  @override
  $Res call({DateTime timestamp, DateTime timestampEdited});
}

/// @nodoc
class _$PauseStempelCopyWithImpl<$Res> extends _$StempelCopyWithImpl<$Res>
    implements $PauseStempelCopyWith<$Res> {
  _$PauseStempelCopyWithImpl(
      PauseStempel _value, $Res Function(PauseStempel) _then)
      : super(_value, (v) => _then(v as PauseStempel));

  @override
  PauseStempel get _value => super._value as PauseStempel;

  @override
  $Res call({
    Object? timestamp = freezed,
    Object? timestampEdited = freezed,
  }) {
    return _then(PauseStempel(
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timestampEdited: timestampEdited == freezed
          ? _value.timestampEdited
          : timestampEdited // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PauseStempel extends PauseStempel with DiagnosticableTreeMixin {
  _$PauseStempel(
      {required this.timestamp, required this.timestampEdited, String? $type})
      : $type = $type ?? 'pause',
        super._();

  factory _$PauseStempel.fromJson(Map<String, dynamic> json) =>
      _$$PauseStempelFromJson(json);

  @override
  final DateTime timestamp;
  @override
  final DateTime timestampEdited;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Stempel.pause(timestamp: $timestamp, timestampEdited: $timestampEdited)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Stempel.pause'))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('timestampEdited', timestampEdited));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PauseStempel &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality()
                .equals(other.timestampEdited, timestampEdited));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(timestampEdited));

  @JsonKey(ignore: true)
  @override
  $PauseStempelCopyWith<PauseStempel> get copyWith =>
      _$PauseStempelCopyWithImpl<PauseStempel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime timestamp, DateTime timestampEdited)
        arbeitszeit,
    required TResult Function(DateTime timestamp, DateTime timestampEdited)
        ende,
    required TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz? einsatz)
        fahrt,
    required TResult Function(DateTime timestamp, DateTime timestampEdited)
        pause,
    required TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz einsatz)
        einsatz,
  }) {
    return pause(timestamp, timestampEdited);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime timestamp, DateTime timestampEdited)? arbeitszeit,
    TResult Function(DateTime timestamp, DateTime timestampEdited)? ende,
    TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz? einsatz)?
        fahrt,
    TResult Function(DateTime timestamp, DateTime timestampEdited)? pause,
    TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz einsatz)?
        einsatz,
  }) {
    return pause?.call(timestamp, timestampEdited);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timestamp, DateTime timestampEdited)? arbeitszeit,
    TResult Function(DateTime timestamp, DateTime timestampEdited)? ende,
    TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz? einsatz)?
        fahrt,
    TResult Function(DateTime timestamp, DateTime timestampEdited)? pause,
    TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz einsatz)?
        einsatz,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(timestamp, timestampEdited);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArbeitszeitStempel value) arbeitszeit,
    required TResult Function(EndeStempel value) ende,
    required TResult Function(FahrtStempel value) fahrt,
    required TResult Function(PauseStempel value) pause,
    required TResult Function(EinsatzStempel value) einsatz,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ArbeitszeitStempel value)? arbeitszeit,
    TResult Function(EndeStempel value)? ende,
    TResult Function(FahrtStempel value)? fahrt,
    TResult Function(PauseStempel value)? pause,
    TResult Function(EinsatzStempel value)? einsatz,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArbeitszeitStempel value)? arbeitszeit,
    TResult Function(EndeStempel value)? ende,
    TResult Function(FahrtStempel value)? fahrt,
    TResult Function(PauseStempel value)? pause,
    TResult Function(EinsatzStempel value)? einsatz,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PauseStempelToJson(this);
  }
}

abstract class PauseStempel extends Stempel {
  factory PauseStempel(
      {required DateTime timestamp,
      required DateTime timestampEdited}) = _$PauseStempel;
  PauseStempel._() : super._();

  factory PauseStempel.fromJson(Map<String, dynamic> json) =
      _$PauseStempel.fromJson;

  @override
  DateTime get timestamp;
  @override
  DateTime get timestampEdited;
  @override
  @JsonKey(ignore: true)
  $PauseStempelCopyWith<PauseStempel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EinsatzStempelCopyWith<$Res> implements $StempelCopyWith<$Res> {
  factory $EinsatzStempelCopyWith(
          EinsatzStempel value, $Res Function(EinsatzStempel) then) =
      _$EinsatzStempelCopyWithImpl<$Res>;
  @override
  $Res call({DateTime timestamp, DateTime timestampEdited, Einsatz einsatz});

  $EinsatzCopyWith<$Res> get einsatz;
}

/// @nodoc
class _$EinsatzStempelCopyWithImpl<$Res> extends _$StempelCopyWithImpl<$Res>
    implements $EinsatzStempelCopyWith<$Res> {
  _$EinsatzStempelCopyWithImpl(
      EinsatzStempel _value, $Res Function(EinsatzStempel) _then)
      : super(_value, (v) => _then(v as EinsatzStempel));

  @override
  EinsatzStempel get _value => super._value as EinsatzStempel;

  @override
  $Res call({
    Object? timestamp = freezed,
    Object? timestampEdited = freezed,
    Object? einsatz = freezed,
  }) {
    return _then(EinsatzStempel(
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timestampEdited: timestampEdited == freezed
          ? _value.timestampEdited
          : timestampEdited // ignore: cast_nullable_to_non_nullable
              as DateTime,
      einsatz: einsatz == freezed
          ? _value.einsatz
          : einsatz // ignore: cast_nullable_to_non_nullable
              as Einsatz,
    ));
  }

  @override
  $EinsatzCopyWith<$Res> get einsatz {
    return $EinsatzCopyWith<$Res>(_value.einsatz, (value) {
      return _then(_value.copyWith(einsatz: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$EinsatzStempel extends EinsatzStempel with DiagnosticableTreeMixin {
  _$EinsatzStempel(
      {required this.timestamp,
      required this.timestampEdited,
      required this.einsatz,
      String? $type})
      : $type = $type ?? 'einsatz',
        super._();

  factory _$EinsatzStempel.fromJson(Map<String, dynamic> json) =>
      _$$EinsatzStempelFromJson(json);

  @override
  final DateTime timestamp;
  @override
  final DateTime timestampEdited;
  @override
  final Einsatz einsatz;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Stempel.einsatz(timestamp: $timestamp, timestampEdited: $timestampEdited, einsatz: $einsatz)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Stempel.einsatz'))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('timestampEdited', timestampEdited))
      ..add(DiagnosticsProperty('einsatz', einsatz));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EinsatzStempel &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality()
                .equals(other.timestampEdited, timestampEdited) &&
            const DeepCollectionEquality().equals(other.einsatz, einsatz));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(timestampEdited),
      const DeepCollectionEquality().hash(einsatz));

  @JsonKey(ignore: true)
  @override
  $EinsatzStempelCopyWith<EinsatzStempel> get copyWith =>
      _$EinsatzStempelCopyWithImpl<EinsatzStempel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime timestamp, DateTime timestampEdited)
        arbeitszeit,
    required TResult Function(DateTime timestamp, DateTime timestampEdited)
        ende,
    required TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz? einsatz)
        fahrt,
    required TResult Function(DateTime timestamp, DateTime timestampEdited)
        pause,
    required TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz einsatz)
        einsatz,
  }) {
    return einsatz(timestamp, timestampEdited, this.einsatz);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime timestamp, DateTime timestampEdited)? arbeitszeit,
    TResult Function(DateTime timestamp, DateTime timestampEdited)? ende,
    TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz? einsatz)?
        fahrt,
    TResult Function(DateTime timestamp, DateTime timestampEdited)? pause,
    TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz einsatz)?
        einsatz,
  }) {
    return einsatz?.call(timestamp, timestampEdited, this.einsatz);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timestamp, DateTime timestampEdited)? arbeitszeit,
    TResult Function(DateTime timestamp, DateTime timestampEdited)? ende,
    TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz? einsatz)?
        fahrt,
    TResult Function(DateTime timestamp, DateTime timestampEdited)? pause,
    TResult Function(
            DateTime timestamp, DateTime timestampEdited, Einsatz einsatz)?
        einsatz,
    required TResult orElse(),
  }) {
    if (einsatz != null) {
      return einsatz(timestamp, timestampEdited, this.einsatz);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArbeitszeitStempel value) arbeitszeit,
    required TResult Function(EndeStempel value) ende,
    required TResult Function(FahrtStempel value) fahrt,
    required TResult Function(PauseStempel value) pause,
    required TResult Function(EinsatzStempel value) einsatz,
  }) {
    return einsatz(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ArbeitszeitStempel value)? arbeitszeit,
    TResult Function(EndeStempel value)? ende,
    TResult Function(FahrtStempel value)? fahrt,
    TResult Function(PauseStempel value)? pause,
    TResult Function(EinsatzStempel value)? einsatz,
  }) {
    return einsatz?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArbeitszeitStempel value)? arbeitszeit,
    TResult Function(EndeStempel value)? ende,
    TResult Function(FahrtStempel value)? fahrt,
    TResult Function(PauseStempel value)? pause,
    TResult Function(EinsatzStempel value)? einsatz,
    required TResult orElse(),
  }) {
    if (einsatz != null) {
      return einsatz(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EinsatzStempelToJson(this);
  }
}

abstract class EinsatzStempel extends Stempel {
  factory EinsatzStempel(
      {required DateTime timestamp,
      required DateTime timestampEdited,
      required Einsatz einsatz}) = _$EinsatzStempel;
  EinsatzStempel._() : super._();

  factory EinsatzStempel.fromJson(Map<String, dynamic> json) =
      _$EinsatzStempel.fromJson;

  @override
  DateTime get timestamp;
  @override
  DateTime get timestampEdited;
  Einsatz get einsatz;
  @override
  @JsonKey(ignore: true)
  $EinsatzStempelCopyWith<EinsatzStempel> get copyWith =>
      throw _privateConstructorUsedError;
}
