// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'abrechnung_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AbrechnungEventTearOff {
  const _$AbrechnungEventTearOff();

  BeendeArbeitszeit beendeArbeitszeit(
      {required DateTime timestampEdited, DateTime? timestamp}) {
    return BeendeArbeitszeit(
      timestampEdited: timestampEdited,
      timestamp: timestamp,
    );
  }

  BeendeFahrt beendeFahrt(
      {required DateTime timestampEdited, DateTime? timestamp}) {
    return BeendeFahrt(
      timestampEdited: timestampEdited,
      timestamp: timestamp,
    );
  }

  BeendePause beendePause(
      {required DateTime timestampEdited,
      DateTime? timestamp,
      bool? continueTaetigkeit}) {
    return BeendePause(
      timestampEdited: timestampEdited,
      timestamp: timestamp,
      continueTaetigkeit: continueTaetigkeit,
    );
  }

  BeendeEinsatz beendEinsatz(
      {required DateTime timestampEdited, DateTime? timestamp}) {
    return BeendeEinsatz(
      timestampEdited: timestampEdited,
      timestamp: timestamp,
    );
  }

  SignalProblem signalProblem(AbrechnungProblem problem) {
    return SignalProblem(
      problem,
    );
  }

  StarteArbeitszeit starteArbeitszeit(
      {required DateTime timestampEdited, DateTime? timestamp}) {
    return StarteArbeitszeit(
      timestampEdited: timestampEdited,
      timestamp: timestamp,
    );
  }

  StarteFahrt starteFahrt(
      {required DateTime timestampEdited,
      Einsatz? einsatz,
      DateTime? timestamp}) {
    return StarteFahrt(
      timestampEdited: timestampEdited,
      einsatz: einsatz,
      timestamp: timestamp,
    );
  }

  StartePause startePause(
      {required DateTime timestampEdited, DateTime? timestamp}) {
    return StartePause(
      timestampEdited: timestampEdited,
      timestamp: timestamp,
    );
  }

  StarteEinsatz starteEinsatz(
      {required DateTime timestampEdited,
      required Einsatz einsatz,
      DateTime? timestamp}) {
    return StarteEinsatz(
      timestampEdited: timestampEdited,
      einsatz: einsatz,
      timestamp: timestamp,
    );
  }

  LoadState loadState() {
    return const LoadState();
  }

  AddTaetigkeit addTaetigkeit(Taetigkeit taetigkeit) {
    return AddTaetigkeit(
      taetigkeit,
    );
  }

  RemoveTaetigkeit removeTaetigkeit(Taetigkeit taetigkeit) {
    return RemoveTaetigkeit(
      taetigkeit,
    );
  }

  AddKunde addKunde(Kunde kunde) {
    return AddKunde(
      kunde,
    );
  }

  RemoveKunde removeKunde(Kunde kunde) {
    return RemoveKunde(
      kunde,
    );
  }

  AddAbwTaetigkeit addAbwTaetigkeit(Kunde kunde, Taetigkeit taetigkeit) {
    return AddAbwTaetigkeit(
      kunde,
      taetigkeit,
    );
  }

  RemoveAbwTaetigkeit removeAbwTaetigkeit(Kunde kunde, Taetigkeit taetigkeit) {
    return RemoveAbwTaetigkeit(
      kunde,
      taetigkeit,
    );
  }
}

/// @nodoc
const $AbrechnungEvent = _$AbrechnungEventTearOff();

/// @nodoc
mixin _$AbrechnungEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeArbeitszeit,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)
        beendePause,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendEinsatz,
    required TResult Function(AbrechnungProblem problem) signalProblem,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        starteArbeitszeit,
    required TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)
        starteFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        startePause,
    required TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)
        starteEinsatz,
    required TResult Function() loadState,
    required TResult Function(Taetigkeit taetigkeit) addTaetigkeit,
    required TResult Function(Taetigkeit taetigkeit) removeTaetigkeit,
    required TResult Function(Kunde kunde) addKunde,
    required TResult Function(Kunde kunde) removeKunde,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        addAbwTaetigkeit,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        removeAbwTaetigkeit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeendeArbeitszeit value) beendeArbeitszeit,
    required TResult Function(BeendeFahrt value) beendeFahrt,
    required TResult Function(BeendePause value) beendePause,
    required TResult Function(BeendeEinsatz value) beendEinsatz,
    required TResult Function(SignalProblem value) signalProblem,
    required TResult Function(StarteArbeitszeit value) starteArbeitszeit,
    required TResult Function(StarteFahrt value) starteFahrt,
    required TResult Function(StartePause value) startePause,
    required TResult Function(StarteEinsatz value) starteEinsatz,
    required TResult Function(LoadState value) loadState,
    required TResult Function(AddTaetigkeit value) addTaetigkeit,
    required TResult Function(RemoveTaetigkeit value) removeTaetigkeit,
    required TResult Function(AddKunde value) addKunde,
    required TResult Function(RemoveKunde value) removeKunde,
    required TResult Function(AddAbwTaetigkeit value) addAbwTaetigkeit,
    required TResult Function(RemoveAbwTaetigkeit value) removeAbwTaetigkeit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbrechnungEventCopyWith<$Res> {
  factory $AbrechnungEventCopyWith(
          AbrechnungEvent value, $Res Function(AbrechnungEvent) then) =
      _$AbrechnungEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AbrechnungEventCopyWithImpl<$Res>
    implements $AbrechnungEventCopyWith<$Res> {
  _$AbrechnungEventCopyWithImpl(this._value, this._then);

  final AbrechnungEvent _value;
  // ignore: unused_field
  final $Res Function(AbrechnungEvent) _then;
}

/// @nodoc
abstract class $BeendeArbeitszeitCopyWith<$Res> {
  factory $BeendeArbeitszeitCopyWith(
          BeendeArbeitszeit value, $Res Function(BeendeArbeitszeit) then) =
      _$BeendeArbeitszeitCopyWithImpl<$Res>;
  $Res call({DateTime timestampEdited, DateTime? timestamp});
}

/// @nodoc
class _$BeendeArbeitszeitCopyWithImpl<$Res>
    extends _$AbrechnungEventCopyWithImpl<$Res>
    implements $BeendeArbeitszeitCopyWith<$Res> {
  _$BeendeArbeitszeitCopyWithImpl(
      BeendeArbeitszeit _value, $Res Function(BeendeArbeitszeit) _then)
      : super(_value, (v) => _then(v as BeendeArbeitszeit));

  @override
  BeendeArbeitszeit get _value => super._value as BeendeArbeitszeit;

  @override
  $Res call({
    Object? timestampEdited = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(BeendeArbeitszeit(
      timestampEdited: timestampEdited == freezed
          ? _value.timestampEdited
          : timestampEdited // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$BeendeArbeitszeit
    with DiagnosticableTreeMixin
    implements BeendeArbeitszeit {
  const _$BeendeArbeitszeit({required this.timestampEdited, this.timestamp});

  @override
  final DateTime timestampEdited;
  @override
  final DateTime? timestamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbrechnungEvent.beendeArbeitszeit(timestampEdited: $timestampEdited, timestamp: $timestamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbrechnungEvent.beendeArbeitszeit'))
      ..add(DiagnosticsProperty('timestampEdited', timestampEdited))
      ..add(DiagnosticsProperty('timestamp', timestamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BeendeArbeitszeit &&
            const DeepCollectionEquality()
                .equals(other.timestampEdited, timestampEdited) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(timestampEdited),
      const DeepCollectionEquality().hash(timestamp));

  @JsonKey(ignore: true)
  @override
  $BeendeArbeitszeitCopyWith<BeendeArbeitszeit> get copyWith =>
      _$BeendeArbeitszeitCopyWithImpl<BeendeArbeitszeit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeArbeitszeit,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)
        beendePause,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendEinsatz,
    required TResult Function(AbrechnungProblem problem) signalProblem,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        starteArbeitszeit,
    required TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)
        starteFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        startePause,
    required TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)
        starteEinsatz,
    required TResult Function() loadState,
    required TResult Function(Taetigkeit taetigkeit) addTaetigkeit,
    required TResult Function(Taetigkeit taetigkeit) removeTaetigkeit,
    required TResult Function(Kunde kunde) addKunde,
    required TResult Function(Kunde kunde) removeKunde,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        addAbwTaetigkeit,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        removeAbwTaetigkeit,
  }) {
    return beendeArbeitszeit(timestampEdited, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
  }) {
    return beendeArbeitszeit?.call(timestampEdited, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (beendeArbeitszeit != null) {
      return beendeArbeitszeit(timestampEdited, timestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeendeArbeitszeit value) beendeArbeitszeit,
    required TResult Function(BeendeFahrt value) beendeFahrt,
    required TResult Function(BeendePause value) beendePause,
    required TResult Function(BeendeEinsatz value) beendEinsatz,
    required TResult Function(SignalProblem value) signalProblem,
    required TResult Function(StarteArbeitszeit value) starteArbeitszeit,
    required TResult Function(StarteFahrt value) starteFahrt,
    required TResult Function(StartePause value) startePause,
    required TResult Function(StarteEinsatz value) starteEinsatz,
    required TResult Function(LoadState value) loadState,
    required TResult Function(AddTaetigkeit value) addTaetigkeit,
    required TResult Function(RemoveTaetigkeit value) removeTaetigkeit,
    required TResult Function(AddKunde value) addKunde,
    required TResult Function(RemoveKunde value) removeKunde,
    required TResult Function(AddAbwTaetigkeit value) addAbwTaetigkeit,
    required TResult Function(RemoveAbwTaetigkeit value) removeAbwTaetigkeit,
  }) {
    return beendeArbeitszeit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
  }) {
    return beendeArbeitszeit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (beendeArbeitszeit != null) {
      return beendeArbeitszeit(this);
    }
    return orElse();
  }
}

abstract class BeendeArbeitszeit implements AbrechnungEvent {
  const factory BeendeArbeitszeit(
      {required DateTime timestampEdited,
      DateTime? timestamp}) = _$BeendeArbeitszeit;

  DateTime get timestampEdited;
  DateTime? get timestamp;
  @JsonKey(ignore: true)
  $BeendeArbeitszeitCopyWith<BeendeArbeitszeit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeendeFahrtCopyWith<$Res> {
  factory $BeendeFahrtCopyWith(
          BeendeFahrt value, $Res Function(BeendeFahrt) then) =
      _$BeendeFahrtCopyWithImpl<$Res>;
  $Res call({DateTime timestampEdited, DateTime? timestamp});
}

/// @nodoc
class _$BeendeFahrtCopyWithImpl<$Res>
    extends _$AbrechnungEventCopyWithImpl<$Res>
    implements $BeendeFahrtCopyWith<$Res> {
  _$BeendeFahrtCopyWithImpl(
      BeendeFahrt _value, $Res Function(BeendeFahrt) _then)
      : super(_value, (v) => _then(v as BeendeFahrt));

  @override
  BeendeFahrt get _value => super._value as BeendeFahrt;

  @override
  $Res call({
    Object? timestampEdited = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(BeendeFahrt(
      timestampEdited: timestampEdited == freezed
          ? _value.timestampEdited
          : timestampEdited // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$BeendeFahrt with DiagnosticableTreeMixin implements BeendeFahrt {
  const _$BeendeFahrt({required this.timestampEdited, this.timestamp});

  @override
  final DateTime timestampEdited;
  @override
  final DateTime? timestamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbrechnungEvent.beendeFahrt(timestampEdited: $timestampEdited, timestamp: $timestamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbrechnungEvent.beendeFahrt'))
      ..add(DiagnosticsProperty('timestampEdited', timestampEdited))
      ..add(DiagnosticsProperty('timestamp', timestamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BeendeFahrt &&
            const DeepCollectionEquality()
                .equals(other.timestampEdited, timestampEdited) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(timestampEdited),
      const DeepCollectionEquality().hash(timestamp));

  @JsonKey(ignore: true)
  @override
  $BeendeFahrtCopyWith<BeendeFahrt> get copyWith =>
      _$BeendeFahrtCopyWithImpl<BeendeFahrt>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeArbeitszeit,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)
        beendePause,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendEinsatz,
    required TResult Function(AbrechnungProblem problem) signalProblem,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        starteArbeitszeit,
    required TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)
        starteFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        startePause,
    required TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)
        starteEinsatz,
    required TResult Function() loadState,
    required TResult Function(Taetigkeit taetigkeit) addTaetigkeit,
    required TResult Function(Taetigkeit taetigkeit) removeTaetigkeit,
    required TResult Function(Kunde kunde) addKunde,
    required TResult Function(Kunde kunde) removeKunde,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        addAbwTaetigkeit,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        removeAbwTaetigkeit,
  }) {
    return beendeFahrt(timestampEdited, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
  }) {
    return beendeFahrt?.call(timestampEdited, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (beendeFahrt != null) {
      return beendeFahrt(timestampEdited, timestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeendeArbeitszeit value) beendeArbeitszeit,
    required TResult Function(BeendeFahrt value) beendeFahrt,
    required TResult Function(BeendePause value) beendePause,
    required TResult Function(BeendeEinsatz value) beendEinsatz,
    required TResult Function(SignalProblem value) signalProblem,
    required TResult Function(StarteArbeitszeit value) starteArbeitszeit,
    required TResult Function(StarteFahrt value) starteFahrt,
    required TResult Function(StartePause value) startePause,
    required TResult Function(StarteEinsatz value) starteEinsatz,
    required TResult Function(LoadState value) loadState,
    required TResult Function(AddTaetigkeit value) addTaetigkeit,
    required TResult Function(RemoveTaetigkeit value) removeTaetigkeit,
    required TResult Function(AddKunde value) addKunde,
    required TResult Function(RemoveKunde value) removeKunde,
    required TResult Function(AddAbwTaetigkeit value) addAbwTaetigkeit,
    required TResult Function(RemoveAbwTaetigkeit value) removeAbwTaetigkeit,
  }) {
    return beendeFahrt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
  }) {
    return beendeFahrt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (beendeFahrt != null) {
      return beendeFahrt(this);
    }
    return orElse();
  }
}

abstract class BeendeFahrt implements AbrechnungEvent {
  const factory BeendeFahrt(
      {required DateTime timestampEdited, DateTime? timestamp}) = _$BeendeFahrt;

  DateTime get timestampEdited;
  DateTime? get timestamp;
  @JsonKey(ignore: true)
  $BeendeFahrtCopyWith<BeendeFahrt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeendePauseCopyWith<$Res> {
  factory $BeendePauseCopyWith(
          BeendePause value, $Res Function(BeendePause) then) =
      _$BeendePauseCopyWithImpl<$Res>;
  $Res call(
      {DateTime timestampEdited,
      DateTime? timestamp,
      bool? continueTaetigkeit});
}

/// @nodoc
class _$BeendePauseCopyWithImpl<$Res>
    extends _$AbrechnungEventCopyWithImpl<$Res>
    implements $BeendePauseCopyWith<$Res> {
  _$BeendePauseCopyWithImpl(
      BeendePause _value, $Res Function(BeendePause) _then)
      : super(_value, (v) => _then(v as BeendePause));

  @override
  BeendePause get _value => super._value as BeendePause;

  @override
  $Res call({
    Object? timestampEdited = freezed,
    Object? timestamp = freezed,
    Object? continueTaetigkeit = freezed,
  }) {
    return _then(BeendePause(
      timestampEdited: timestampEdited == freezed
          ? _value.timestampEdited
          : timestampEdited // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      continueTaetigkeit: continueTaetigkeit == freezed
          ? _value.continueTaetigkeit
          : continueTaetigkeit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$BeendePause with DiagnosticableTreeMixin implements BeendePause {
  const _$BeendePause(
      {required this.timestampEdited, this.timestamp, this.continueTaetigkeit});

  @override
  final DateTime timestampEdited;
  @override
  final DateTime? timestamp;
  @override
  final bool? continueTaetigkeit;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbrechnungEvent.beendePause(timestampEdited: $timestampEdited, timestamp: $timestamp, continueTaetigkeit: $continueTaetigkeit)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbrechnungEvent.beendePause'))
      ..add(DiagnosticsProperty('timestampEdited', timestampEdited))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('continueTaetigkeit', continueTaetigkeit));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BeendePause &&
            const DeepCollectionEquality()
                .equals(other.timestampEdited, timestampEdited) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality()
                .equals(other.continueTaetigkeit, continueTaetigkeit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(timestampEdited),
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(continueTaetigkeit));

  @JsonKey(ignore: true)
  @override
  $BeendePauseCopyWith<BeendePause> get copyWith =>
      _$BeendePauseCopyWithImpl<BeendePause>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeArbeitszeit,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)
        beendePause,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendEinsatz,
    required TResult Function(AbrechnungProblem problem) signalProblem,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        starteArbeitszeit,
    required TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)
        starteFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        startePause,
    required TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)
        starteEinsatz,
    required TResult Function() loadState,
    required TResult Function(Taetigkeit taetigkeit) addTaetigkeit,
    required TResult Function(Taetigkeit taetigkeit) removeTaetigkeit,
    required TResult Function(Kunde kunde) addKunde,
    required TResult Function(Kunde kunde) removeKunde,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        addAbwTaetigkeit,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        removeAbwTaetigkeit,
  }) {
    return beendePause(timestampEdited, timestamp, continueTaetigkeit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
  }) {
    return beendePause?.call(timestampEdited, timestamp, continueTaetigkeit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (beendePause != null) {
      return beendePause(timestampEdited, timestamp, continueTaetigkeit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeendeArbeitszeit value) beendeArbeitszeit,
    required TResult Function(BeendeFahrt value) beendeFahrt,
    required TResult Function(BeendePause value) beendePause,
    required TResult Function(BeendeEinsatz value) beendEinsatz,
    required TResult Function(SignalProblem value) signalProblem,
    required TResult Function(StarteArbeitszeit value) starteArbeitszeit,
    required TResult Function(StarteFahrt value) starteFahrt,
    required TResult Function(StartePause value) startePause,
    required TResult Function(StarteEinsatz value) starteEinsatz,
    required TResult Function(LoadState value) loadState,
    required TResult Function(AddTaetigkeit value) addTaetigkeit,
    required TResult Function(RemoveTaetigkeit value) removeTaetigkeit,
    required TResult Function(AddKunde value) addKunde,
    required TResult Function(RemoveKunde value) removeKunde,
    required TResult Function(AddAbwTaetigkeit value) addAbwTaetigkeit,
    required TResult Function(RemoveAbwTaetigkeit value) removeAbwTaetigkeit,
  }) {
    return beendePause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
  }) {
    return beendePause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (beendePause != null) {
      return beendePause(this);
    }
    return orElse();
  }
}

abstract class BeendePause implements AbrechnungEvent {
  const factory BeendePause(
      {required DateTime timestampEdited,
      DateTime? timestamp,
      bool? continueTaetigkeit}) = _$BeendePause;

  DateTime get timestampEdited;
  DateTime? get timestamp;
  bool? get continueTaetigkeit;
  @JsonKey(ignore: true)
  $BeendePauseCopyWith<BeendePause> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeendeEinsatzCopyWith<$Res> {
  factory $BeendeEinsatzCopyWith(
          BeendeEinsatz value, $Res Function(BeendeEinsatz) then) =
      _$BeendeEinsatzCopyWithImpl<$Res>;
  $Res call({DateTime timestampEdited, DateTime? timestamp});
}

/// @nodoc
class _$BeendeEinsatzCopyWithImpl<$Res>
    extends _$AbrechnungEventCopyWithImpl<$Res>
    implements $BeendeEinsatzCopyWith<$Res> {
  _$BeendeEinsatzCopyWithImpl(
      BeendeEinsatz _value, $Res Function(BeendeEinsatz) _then)
      : super(_value, (v) => _then(v as BeendeEinsatz));

  @override
  BeendeEinsatz get _value => super._value as BeendeEinsatz;

  @override
  $Res call({
    Object? timestampEdited = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(BeendeEinsatz(
      timestampEdited: timestampEdited == freezed
          ? _value.timestampEdited
          : timestampEdited // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$BeendeEinsatz with DiagnosticableTreeMixin implements BeendeEinsatz {
  const _$BeendeEinsatz({required this.timestampEdited, this.timestamp});

  @override
  final DateTime timestampEdited;
  @override
  final DateTime? timestamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbrechnungEvent.beendEinsatz(timestampEdited: $timestampEdited, timestamp: $timestamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbrechnungEvent.beendEinsatz'))
      ..add(DiagnosticsProperty('timestampEdited', timestampEdited))
      ..add(DiagnosticsProperty('timestamp', timestamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BeendeEinsatz &&
            const DeepCollectionEquality()
                .equals(other.timestampEdited, timestampEdited) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(timestampEdited),
      const DeepCollectionEquality().hash(timestamp));

  @JsonKey(ignore: true)
  @override
  $BeendeEinsatzCopyWith<BeendeEinsatz> get copyWith =>
      _$BeendeEinsatzCopyWithImpl<BeendeEinsatz>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeArbeitszeit,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)
        beendePause,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendEinsatz,
    required TResult Function(AbrechnungProblem problem) signalProblem,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        starteArbeitszeit,
    required TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)
        starteFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        startePause,
    required TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)
        starteEinsatz,
    required TResult Function() loadState,
    required TResult Function(Taetigkeit taetigkeit) addTaetigkeit,
    required TResult Function(Taetigkeit taetigkeit) removeTaetigkeit,
    required TResult Function(Kunde kunde) addKunde,
    required TResult Function(Kunde kunde) removeKunde,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        addAbwTaetigkeit,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        removeAbwTaetigkeit,
  }) {
    return beendEinsatz(timestampEdited, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
  }) {
    return beendEinsatz?.call(timestampEdited, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (beendEinsatz != null) {
      return beendEinsatz(timestampEdited, timestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeendeArbeitszeit value) beendeArbeitszeit,
    required TResult Function(BeendeFahrt value) beendeFahrt,
    required TResult Function(BeendePause value) beendePause,
    required TResult Function(BeendeEinsatz value) beendEinsatz,
    required TResult Function(SignalProblem value) signalProblem,
    required TResult Function(StarteArbeitszeit value) starteArbeitszeit,
    required TResult Function(StarteFahrt value) starteFahrt,
    required TResult Function(StartePause value) startePause,
    required TResult Function(StarteEinsatz value) starteEinsatz,
    required TResult Function(LoadState value) loadState,
    required TResult Function(AddTaetigkeit value) addTaetigkeit,
    required TResult Function(RemoveTaetigkeit value) removeTaetigkeit,
    required TResult Function(AddKunde value) addKunde,
    required TResult Function(RemoveKunde value) removeKunde,
    required TResult Function(AddAbwTaetigkeit value) addAbwTaetigkeit,
    required TResult Function(RemoveAbwTaetigkeit value) removeAbwTaetigkeit,
  }) {
    return beendEinsatz(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
  }) {
    return beendEinsatz?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (beendEinsatz != null) {
      return beendEinsatz(this);
    }
    return orElse();
  }
}

abstract class BeendeEinsatz implements AbrechnungEvent {
  const factory BeendeEinsatz(
      {required DateTime timestampEdited,
      DateTime? timestamp}) = _$BeendeEinsatz;

  DateTime get timestampEdited;
  DateTime? get timestamp;
  @JsonKey(ignore: true)
  $BeendeEinsatzCopyWith<BeendeEinsatz> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignalProblemCopyWith<$Res> {
  factory $SignalProblemCopyWith(
          SignalProblem value, $Res Function(SignalProblem) then) =
      _$SignalProblemCopyWithImpl<$Res>;
  $Res call({AbrechnungProblem problem});
}

/// @nodoc
class _$SignalProblemCopyWithImpl<$Res>
    extends _$AbrechnungEventCopyWithImpl<$Res>
    implements $SignalProblemCopyWith<$Res> {
  _$SignalProblemCopyWithImpl(
      SignalProblem _value, $Res Function(SignalProblem) _then)
      : super(_value, (v) => _then(v as SignalProblem));

  @override
  SignalProblem get _value => super._value as SignalProblem;

  @override
  $Res call({
    Object? problem = freezed,
  }) {
    return _then(SignalProblem(
      problem == freezed
          ? _value.problem
          : problem // ignore: cast_nullable_to_non_nullable
              as AbrechnungProblem,
    ));
  }
}

/// @nodoc

class _$SignalProblem with DiagnosticableTreeMixin implements SignalProblem {
  const _$SignalProblem(this.problem);

  @override
  final AbrechnungProblem problem;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbrechnungEvent.signalProblem(problem: $problem)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbrechnungEvent.signalProblem'))
      ..add(DiagnosticsProperty('problem', problem));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignalProblem &&
            const DeepCollectionEquality().equals(other.problem, problem));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(problem));

  @JsonKey(ignore: true)
  @override
  $SignalProblemCopyWith<SignalProblem> get copyWith =>
      _$SignalProblemCopyWithImpl<SignalProblem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeArbeitszeit,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)
        beendePause,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendEinsatz,
    required TResult Function(AbrechnungProblem problem) signalProblem,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        starteArbeitszeit,
    required TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)
        starteFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        startePause,
    required TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)
        starteEinsatz,
    required TResult Function() loadState,
    required TResult Function(Taetigkeit taetigkeit) addTaetigkeit,
    required TResult Function(Taetigkeit taetigkeit) removeTaetigkeit,
    required TResult Function(Kunde kunde) addKunde,
    required TResult Function(Kunde kunde) removeKunde,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        addAbwTaetigkeit,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        removeAbwTaetigkeit,
  }) {
    return signalProblem(problem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
  }) {
    return signalProblem?.call(problem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (signalProblem != null) {
      return signalProblem(problem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeendeArbeitszeit value) beendeArbeitszeit,
    required TResult Function(BeendeFahrt value) beendeFahrt,
    required TResult Function(BeendePause value) beendePause,
    required TResult Function(BeendeEinsatz value) beendEinsatz,
    required TResult Function(SignalProblem value) signalProblem,
    required TResult Function(StarteArbeitszeit value) starteArbeitszeit,
    required TResult Function(StarteFahrt value) starteFahrt,
    required TResult Function(StartePause value) startePause,
    required TResult Function(StarteEinsatz value) starteEinsatz,
    required TResult Function(LoadState value) loadState,
    required TResult Function(AddTaetigkeit value) addTaetigkeit,
    required TResult Function(RemoveTaetigkeit value) removeTaetigkeit,
    required TResult Function(AddKunde value) addKunde,
    required TResult Function(RemoveKunde value) removeKunde,
    required TResult Function(AddAbwTaetigkeit value) addAbwTaetigkeit,
    required TResult Function(RemoveAbwTaetigkeit value) removeAbwTaetigkeit,
  }) {
    return signalProblem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
  }) {
    return signalProblem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (signalProblem != null) {
      return signalProblem(this);
    }
    return orElse();
  }
}

abstract class SignalProblem implements AbrechnungEvent {
  const factory SignalProblem(AbrechnungProblem problem) = _$SignalProblem;

  AbrechnungProblem get problem;
  @JsonKey(ignore: true)
  $SignalProblemCopyWith<SignalProblem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StarteArbeitszeitCopyWith<$Res> {
  factory $StarteArbeitszeitCopyWith(
          StarteArbeitszeit value, $Res Function(StarteArbeitszeit) then) =
      _$StarteArbeitszeitCopyWithImpl<$Res>;
  $Res call({DateTime timestampEdited, DateTime? timestamp});
}

/// @nodoc
class _$StarteArbeitszeitCopyWithImpl<$Res>
    extends _$AbrechnungEventCopyWithImpl<$Res>
    implements $StarteArbeitszeitCopyWith<$Res> {
  _$StarteArbeitszeitCopyWithImpl(
      StarteArbeitszeit _value, $Res Function(StarteArbeitszeit) _then)
      : super(_value, (v) => _then(v as StarteArbeitszeit));

  @override
  StarteArbeitszeit get _value => super._value as StarteArbeitszeit;

  @override
  $Res call({
    Object? timestampEdited = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(StarteArbeitszeit(
      timestampEdited: timestampEdited == freezed
          ? _value.timestampEdited
          : timestampEdited // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$StarteArbeitszeit
    with DiagnosticableTreeMixin
    implements StarteArbeitszeit {
  const _$StarteArbeitszeit({required this.timestampEdited, this.timestamp});

  @override
  final DateTime timestampEdited;
  @override
  final DateTime? timestamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbrechnungEvent.starteArbeitszeit(timestampEdited: $timestampEdited, timestamp: $timestamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbrechnungEvent.starteArbeitszeit'))
      ..add(DiagnosticsProperty('timestampEdited', timestampEdited))
      ..add(DiagnosticsProperty('timestamp', timestamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StarteArbeitszeit &&
            const DeepCollectionEquality()
                .equals(other.timestampEdited, timestampEdited) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(timestampEdited),
      const DeepCollectionEquality().hash(timestamp));

  @JsonKey(ignore: true)
  @override
  $StarteArbeitszeitCopyWith<StarteArbeitszeit> get copyWith =>
      _$StarteArbeitszeitCopyWithImpl<StarteArbeitszeit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeArbeitszeit,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)
        beendePause,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendEinsatz,
    required TResult Function(AbrechnungProblem problem) signalProblem,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        starteArbeitszeit,
    required TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)
        starteFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        startePause,
    required TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)
        starteEinsatz,
    required TResult Function() loadState,
    required TResult Function(Taetigkeit taetigkeit) addTaetigkeit,
    required TResult Function(Taetigkeit taetigkeit) removeTaetigkeit,
    required TResult Function(Kunde kunde) addKunde,
    required TResult Function(Kunde kunde) removeKunde,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        addAbwTaetigkeit,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        removeAbwTaetigkeit,
  }) {
    return starteArbeitszeit(timestampEdited, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
  }) {
    return starteArbeitszeit?.call(timestampEdited, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (starteArbeitszeit != null) {
      return starteArbeitszeit(timestampEdited, timestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeendeArbeitszeit value) beendeArbeitszeit,
    required TResult Function(BeendeFahrt value) beendeFahrt,
    required TResult Function(BeendePause value) beendePause,
    required TResult Function(BeendeEinsatz value) beendEinsatz,
    required TResult Function(SignalProblem value) signalProblem,
    required TResult Function(StarteArbeitszeit value) starteArbeitszeit,
    required TResult Function(StarteFahrt value) starteFahrt,
    required TResult Function(StartePause value) startePause,
    required TResult Function(StarteEinsatz value) starteEinsatz,
    required TResult Function(LoadState value) loadState,
    required TResult Function(AddTaetigkeit value) addTaetigkeit,
    required TResult Function(RemoveTaetigkeit value) removeTaetigkeit,
    required TResult Function(AddKunde value) addKunde,
    required TResult Function(RemoveKunde value) removeKunde,
    required TResult Function(AddAbwTaetigkeit value) addAbwTaetigkeit,
    required TResult Function(RemoveAbwTaetigkeit value) removeAbwTaetigkeit,
  }) {
    return starteArbeitszeit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
  }) {
    return starteArbeitszeit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (starteArbeitszeit != null) {
      return starteArbeitszeit(this);
    }
    return orElse();
  }
}

abstract class StarteArbeitszeit implements AbrechnungEvent {
  const factory StarteArbeitszeit(
      {required DateTime timestampEdited,
      DateTime? timestamp}) = _$StarteArbeitszeit;

  DateTime get timestampEdited;
  DateTime? get timestamp;
  @JsonKey(ignore: true)
  $StarteArbeitszeitCopyWith<StarteArbeitszeit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StarteFahrtCopyWith<$Res> {
  factory $StarteFahrtCopyWith(
          StarteFahrt value, $Res Function(StarteFahrt) then) =
      _$StarteFahrtCopyWithImpl<$Res>;
  $Res call({DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp});

  $EinsatzCopyWith<$Res>? get einsatz;
}

/// @nodoc
class _$StarteFahrtCopyWithImpl<$Res>
    extends _$AbrechnungEventCopyWithImpl<$Res>
    implements $StarteFahrtCopyWith<$Res> {
  _$StarteFahrtCopyWithImpl(
      StarteFahrt _value, $Res Function(StarteFahrt) _then)
      : super(_value, (v) => _then(v as StarteFahrt));

  @override
  StarteFahrt get _value => super._value as StarteFahrt;

  @override
  $Res call({
    Object? timestampEdited = freezed,
    Object? einsatz = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(StarteFahrt(
      timestampEdited: timestampEdited == freezed
          ? _value.timestampEdited
          : timestampEdited // ignore: cast_nullable_to_non_nullable
              as DateTime,
      einsatz: einsatz == freezed
          ? _value.einsatz
          : einsatz // ignore: cast_nullable_to_non_nullable
              as Einsatz?,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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

class _$StarteFahrt with DiagnosticableTreeMixin implements StarteFahrt {
  const _$StarteFahrt(
      {required this.timestampEdited, this.einsatz, this.timestamp});

  @override
  final DateTime timestampEdited;
  @override
  final Einsatz? einsatz;
  @override
  final DateTime? timestamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbrechnungEvent.starteFahrt(timestampEdited: $timestampEdited, einsatz: $einsatz, timestamp: $timestamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbrechnungEvent.starteFahrt'))
      ..add(DiagnosticsProperty('timestampEdited', timestampEdited))
      ..add(DiagnosticsProperty('einsatz', einsatz))
      ..add(DiagnosticsProperty('timestamp', timestamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StarteFahrt &&
            const DeepCollectionEquality()
                .equals(other.timestampEdited, timestampEdited) &&
            const DeepCollectionEquality().equals(other.einsatz, einsatz) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(timestampEdited),
      const DeepCollectionEquality().hash(einsatz),
      const DeepCollectionEquality().hash(timestamp));

  @JsonKey(ignore: true)
  @override
  $StarteFahrtCopyWith<StarteFahrt> get copyWith =>
      _$StarteFahrtCopyWithImpl<StarteFahrt>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeArbeitszeit,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)
        beendePause,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendEinsatz,
    required TResult Function(AbrechnungProblem problem) signalProblem,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        starteArbeitszeit,
    required TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)
        starteFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        startePause,
    required TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)
        starteEinsatz,
    required TResult Function() loadState,
    required TResult Function(Taetigkeit taetigkeit) addTaetigkeit,
    required TResult Function(Taetigkeit taetigkeit) removeTaetigkeit,
    required TResult Function(Kunde kunde) addKunde,
    required TResult Function(Kunde kunde) removeKunde,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        addAbwTaetigkeit,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        removeAbwTaetigkeit,
  }) {
    return starteFahrt(timestampEdited, einsatz, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
  }) {
    return starteFahrt?.call(timestampEdited, einsatz, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (starteFahrt != null) {
      return starteFahrt(timestampEdited, einsatz, timestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeendeArbeitszeit value) beendeArbeitszeit,
    required TResult Function(BeendeFahrt value) beendeFahrt,
    required TResult Function(BeendePause value) beendePause,
    required TResult Function(BeendeEinsatz value) beendEinsatz,
    required TResult Function(SignalProblem value) signalProblem,
    required TResult Function(StarteArbeitszeit value) starteArbeitszeit,
    required TResult Function(StarteFahrt value) starteFahrt,
    required TResult Function(StartePause value) startePause,
    required TResult Function(StarteEinsatz value) starteEinsatz,
    required TResult Function(LoadState value) loadState,
    required TResult Function(AddTaetigkeit value) addTaetigkeit,
    required TResult Function(RemoveTaetigkeit value) removeTaetigkeit,
    required TResult Function(AddKunde value) addKunde,
    required TResult Function(RemoveKunde value) removeKunde,
    required TResult Function(AddAbwTaetigkeit value) addAbwTaetigkeit,
    required TResult Function(RemoveAbwTaetigkeit value) removeAbwTaetigkeit,
  }) {
    return starteFahrt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
  }) {
    return starteFahrt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (starteFahrt != null) {
      return starteFahrt(this);
    }
    return orElse();
  }
}

abstract class StarteFahrt implements AbrechnungEvent {
  const factory StarteFahrt(
      {required DateTime timestampEdited,
      Einsatz? einsatz,
      DateTime? timestamp}) = _$StarteFahrt;

  DateTime get timestampEdited;
  Einsatz? get einsatz;
  DateTime? get timestamp;
  @JsonKey(ignore: true)
  $StarteFahrtCopyWith<StarteFahrt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartePauseCopyWith<$Res> {
  factory $StartePauseCopyWith(
          StartePause value, $Res Function(StartePause) then) =
      _$StartePauseCopyWithImpl<$Res>;
  $Res call({DateTime timestampEdited, DateTime? timestamp});
}

/// @nodoc
class _$StartePauseCopyWithImpl<$Res>
    extends _$AbrechnungEventCopyWithImpl<$Res>
    implements $StartePauseCopyWith<$Res> {
  _$StartePauseCopyWithImpl(
      StartePause _value, $Res Function(StartePause) _then)
      : super(_value, (v) => _then(v as StartePause));

  @override
  StartePause get _value => super._value as StartePause;

  @override
  $Res call({
    Object? timestampEdited = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(StartePause(
      timestampEdited: timestampEdited == freezed
          ? _value.timestampEdited
          : timestampEdited // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$StartePause with DiagnosticableTreeMixin implements StartePause {
  const _$StartePause({required this.timestampEdited, this.timestamp});

  @override
  final DateTime timestampEdited;
  @override
  final DateTime? timestamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbrechnungEvent.startePause(timestampEdited: $timestampEdited, timestamp: $timestamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbrechnungEvent.startePause'))
      ..add(DiagnosticsProperty('timestampEdited', timestampEdited))
      ..add(DiagnosticsProperty('timestamp', timestamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StartePause &&
            const DeepCollectionEquality()
                .equals(other.timestampEdited, timestampEdited) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(timestampEdited),
      const DeepCollectionEquality().hash(timestamp));

  @JsonKey(ignore: true)
  @override
  $StartePauseCopyWith<StartePause> get copyWith =>
      _$StartePauseCopyWithImpl<StartePause>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeArbeitszeit,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)
        beendePause,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendEinsatz,
    required TResult Function(AbrechnungProblem problem) signalProblem,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        starteArbeitszeit,
    required TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)
        starteFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        startePause,
    required TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)
        starteEinsatz,
    required TResult Function() loadState,
    required TResult Function(Taetigkeit taetigkeit) addTaetigkeit,
    required TResult Function(Taetigkeit taetigkeit) removeTaetigkeit,
    required TResult Function(Kunde kunde) addKunde,
    required TResult Function(Kunde kunde) removeKunde,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        addAbwTaetigkeit,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        removeAbwTaetigkeit,
  }) {
    return startePause(timestampEdited, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
  }) {
    return startePause?.call(timestampEdited, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (startePause != null) {
      return startePause(timestampEdited, timestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeendeArbeitszeit value) beendeArbeitszeit,
    required TResult Function(BeendeFahrt value) beendeFahrt,
    required TResult Function(BeendePause value) beendePause,
    required TResult Function(BeendeEinsatz value) beendEinsatz,
    required TResult Function(SignalProblem value) signalProblem,
    required TResult Function(StarteArbeitszeit value) starteArbeitszeit,
    required TResult Function(StarteFahrt value) starteFahrt,
    required TResult Function(StartePause value) startePause,
    required TResult Function(StarteEinsatz value) starteEinsatz,
    required TResult Function(LoadState value) loadState,
    required TResult Function(AddTaetigkeit value) addTaetigkeit,
    required TResult Function(RemoveTaetigkeit value) removeTaetigkeit,
    required TResult Function(AddKunde value) addKunde,
    required TResult Function(RemoveKunde value) removeKunde,
    required TResult Function(AddAbwTaetigkeit value) addAbwTaetigkeit,
    required TResult Function(RemoveAbwTaetigkeit value) removeAbwTaetigkeit,
  }) {
    return startePause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
  }) {
    return startePause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (startePause != null) {
      return startePause(this);
    }
    return orElse();
  }
}

abstract class StartePause implements AbrechnungEvent {
  const factory StartePause(
      {required DateTime timestampEdited, DateTime? timestamp}) = _$StartePause;

  DateTime get timestampEdited;
  DateTime? get timestamp;
  @JsonKey(ignore: true)
  $StartePauseCopyWith<StartePause> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StarteEinsatzCopyWith<$Res> {
  factory $StarteEinsatzCopyWith(
          StarteEinsatz value, $Res Function(StarteEinsatz) then) =
      _$StarteEinsatzCopyWithImpl<$Res>;
  $Res call({DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp});

  $EinsatzCopyWith<$Res> get einsatz;
}

/// @nodoc
class _$StarteEinsatzCopyWithImpl<$Res>
    extends _$AbrechnungEventCopyWithImpl<$Res>
    implements $StarteEinsatzCopyWith<$Res> {
  _$StarteEinsatzCopyWithImpl(
      StarteEinsatz _value, $Res Function(StarteEinsatz) _then)
      : super(_value, (v) => _then(v as StarteEinsatz));

  @override
  StarteEinsatz get _value => super._value as StarteEinsatz;

  @override
  $Res call({
    Object? timestampEdited = freezed,
    Object? einsatz = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(StarteEinsatz(
      timestampEdited: timestampEdited == freezed
          ? _value.timestampEdited
          : timestampEdited // ignore: cast_nullable_to_non_nullable
              as DateTime,
      einsatz: einsatz == freezed
          ? _value.einsatz
          : einsatz // ignore: cast_nullable_to_non_nullable
              as Einsatz,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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

class _$StarteEinsatz with DiagnosticableTreeMixin implements StarteEinsatz {
  const _$StarteEinsatz(
      {required this.timestampEdited, required this.einsatz, this.timestamp});

  @override
  final DateTime timestampEdited;
  @override
  final Einsatz einsatz;
  @override
  final DateTime? timestamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbrechnungEvent.starteEinsatz(timestampEdited: $timestampEdited, einsatz: $einsatz, timestamp: $timestamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbrechnungEvent.starteEinsatz'))
      ..add(DiagnosticsProperty('timestampEdited', timestampEdited))
      ..add(DiagnosticsProperty('einsatz', einsatz))
      ..add(DiagnosticsProperty('timestamp', timestamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StarteEinsatz &&
            const DeepCollectionEquality()
                .equals(other.timestampEdited, timestampEdited) &&
            const DeepCollectionEquality().equals(other.einsatz, einsatz) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(timestampEdited),
      const DeepCollectionEquality().hash(einsatz),
      const DeepCollectionEquality().hash(timestamp));

  @JsonKey(ignore: true)
  @override
  $StarteEinsatzCopyWith<StarteEinsatz> get copyWith =>
      _$StarteEinsatzCopyWithImpl<StarteEinsatz>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeArbeitszeit,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)
        beendePause,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendEinsatz,
    required TResult Function(AbrechnungProblem problem) signalProblem,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        starteArbeitszeit,
    required TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)
        starteFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        startePause,
    required TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)
        starteEinsatz,
    required TResult Function() loadState,
    required TResult Function(Taetigkeit taetigkeit) addTaetigkeit,
    required TResult Function(Taetigkeit taetigkeit) removeTaetigkeit,
    required TResult Function(Kunde kunde) addKunde,
    required TResult Function(Kunde kunde) removeKunde,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        addAbwTaetigkeit,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        removeAbwTaetigkeit,
  }) {
    return starteEinsatz(timestampEdited, einsatz, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
  }) {
    return starteEinsatz?.call(timestampEdited, einsatz, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (starteEinsatz != null) {
      return starteEinsatz(timestampEdited, einsatz, timestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeendeArbeitszeit value) beendeArbeitszeit,
    required TResult Function(BeendeFahrt value) beendeFahrt,
    required TResult Function(BeendePause value) beendePause,
    required TResult Function(BeendeEinsatz value) beendEinsatz,
    required TResult Function(SignalProblem value) signalProblem,
    required TResult Function(StarteArbeitszeit value) starteArbeitszeit,
    required TResult Function(StarteFahrt value) starteFahrt,
    required TResult Function(StartePause value) startePause,
    required TResult Function(StarteEinsatz value) starteEinsatz,
    required TResult Function(LoadState value) loadState,
    required TResult Function(AddTaetigkeit value) addTaetigkeit,
    required TResult Function(RemoveTaetigkeit value) removeTaetigkeit,
    required TResult Function(AddKunde value) addKunde,
    required TResult Function(RemoveKunde value) removeKunde,
    required TResult Function(AddAbwTaetigkeit value) addAbwTaetigkeit,
    required TResult Function(RemoveAbwTaetigkeit value) removeAbwTaetigkeit,
  }) {
    return starteEinsatz(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
  }) {
    return starteEinsatz?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (starteEinsatz != null) {
      return starteEinsatz(this);
    }
    return orElse();
  }
}

abstract class StarteEinsatz implements AbrechnungEvent {
  const factory StarteEinsatz(
      {required DateTime timestampEdited,
      required Einsatz einsatz,
      DateTime? timestamp}) = _$StarteEinsatz;

  DateTime get timestampEdited;
  Einsatz get einsatz;
  DateTime? get timestamp;
  @JsonKey(ignore: true)
  $StarteEinsatzCopyWith<StarteEinsatz> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadStateCopyWith<$Res> {
  factory $LoadStateCopyWith(LoadState value, $Res Function(LoadState) then) =
      _$LoadStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadStateCopyWithImpl<$Res> extends _$AbrechnungEventCopyWithImpl<$Res>
    implements $LoadStateCopyWith<$Res> {
  _$LoadStateCopyWithImpl(LoadState _value, $Res Function(LoadState) _then)
      : super(_value, (v) => _then(v as LoadState));

  @override
  LoadState get _value => super._value as LoadState;
}

/// @nodoc

class _$LoadState with DiagnosticableTreeMixin implements LoadState {
  const _$LoadState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbrechnungEvent.loadState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AbrechnungEvent.loadState'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeArbeitszeit,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)
        beendePause,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendEinsatz,
    required TResult Function(AbrechnungProblem problem) signalProblem,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        starteArbeitszeit,
    required TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)
        starteFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        startePause,
    required TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)
        starteEinsatz,
    required TResult Function() loadState,
    required TResult Function(Taetigkeit taetigkeit) addTaetigkeit,
    required TResult Function(Taetigkeit taetigkeit) removeTaetigkeit,
    required TResult Function(Kunde kunde) addKunde,
    required TResult Function(Kunde kunde) removeKunde,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        addAbwTaetigkeit,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        removeAbwTaetigkeit,
  }) {
    return loadState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
  }) {
    return loadState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (loadState != null) {
      return loadState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeendeArbeitszeit value) beendeArbeitszeit,
    required TResult Function(BeendeFahrt value) beendeFahrt,
    required TResult Function(BeendePause value) beendePause,
    required TResult Function(BeendeEinsatz value) beendEinsatz,
    required TResult Function(SignalProblem value) signalProblem,
    required TResult Function(StarteArbeitszeit value) starteArbeitszeit,
    required TResult Function(StarteFahrt value) starteFahrt,
    required TResult Function(StartePause value) startePause,
    required TResult Function(StarteEinsatz value) starteEinsatz,
    required TResult Function(LoadState value) loadState,
    required TResult Function(AddTaetigkeit value) addTaetigkeit,
    required TResult Function(RemoveTaetigkeit value) removeTaetigkeit,
    required TResult Function(AddKunde value) addKunde,
    required TResult Function(RemoveKunde value) removeKunde,
    required TResult Function(AddAbwTaetigkeit value) addAbwTaetigkeit,
    required TResult Function(RemoveAbwTaetigkeit value) removeAbwTaetigkeit,
  }) {
    return loadState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
  }) {
    return loadState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (loadState != null) {
      return loadState(this);
    }
    return orElse();
  }
}

abstract class LoadState implements AbrechnungEvent {
  const factory LoadState() = _$LoadState;
}

/// @nodoc
abstract class $AddTaetigkeitCopyWith<$Res> {
  factory $AddTaetigkeitCopyWith(
          AddTaetigkeit value, $Res Function(AddTaetigkeit) then) =
      _$AddTaetigkeitCopyWithImpl<$Res>;
  $Res call({Taetigkeit taetigkeit});

  $TaetigkeitCopyWith<$Res> get taetigkeit;
}

/// @nodoc
class _$AddTaetigkeitCopyWithImpl<$Res>
    extends _$AbrechnungEventCopyWithImpl<$Res>
    implements $AddTaetigkeitCopyWith<$Res> {
  _$AddTaetigkeitCopyWithImpl(
      AddTaetigkeit _value, $Res Function(AddTaetigkeit) _then)
      : super(_value, (v) => _then(v as AddTaetigkeit));

  @override
  AddTaetigkeit get _value => super._value as AddTaetigkeit;

  @override
  $Res call({
    Object? taetigkeit = freezed,
  }) {
    return _then(AddTaetigkeit(
      taetigkeit == freezed
          ? _value.taetigkeit
          : taetigkeit // ignore: cast_nullable_to_non_nullable
              as Taetigkeit,
    ));
  }

  @override
  $TaetigkeitCopyWith<$Res> get taetigkeit {
    return $TaetigkeitCopyWith<$Res>(_value.taetigkeit, (value) {
      return _then(_value.copyWith(taetigkeit: value));
    });
  }
}

/// @nodoc

class _$AddTaetigkeit with DiagnosticableTreeMixin implements AddTaetigkeit {
  const _$AddTaetigkeit(this.taetigkeit);

  @override
  final Taetigkeit taetigkeit;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbrechnungEvent.addTaetigkeit(taetigkeit: $taetigkeit)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbrechnungEvent.addTaetigkeit'))
      ..add(DiagnosticsProperty('taetigkeit', taetigkeit));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddTaetigkeit &&
            const DeepCollectionEquality()
                .equals(other.taetigkeit, taetigkeit));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(taetigkeit));

  @JsonKey(ignore: true)
  @override
  $AddTaetigkeitCopyWith<AddTaetigkeit> get copyWith =>
      _$AddTaetigkeitCopyWithImpl<AddTaetigkeit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeArbeitszeit,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)
        beendePause,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendEinsatz,
    required TResult Function(AbrechnungProblem problem) signalProblem,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        starteArbeitszeit,
    required TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)
        starteFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        startePause,
    required TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)
        starteEinsatz,
    required TResult Function() loadState,
    required TResult Function(Taetigkeit taetigkeit) addTaetigkeit,
    required TResult Function(Taetigkeit taetigkeit) removeTaetigkeit,
    required TResult Function(Kunde kunde) addKunde,
    required TResult Function(Kunde kunde) removeKunde,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        addAbwTaetigkeit,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        removeAbwTaetigkeit,
  }) {
    return addTaetigkeit(taetigkeit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
  }) {
    return addTaetigkeit?.call(taetigkeit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (addTaetigkeit != null) {
      return addTaetigkeit(taetigkeit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeendeArbeitszeit value) beendeArbeitszeit,
    required TResult Function(BeendeFahrt value) beendeFahrt,
    required TResult Function(BeendePause value) beendePause,
    required TResult Function(BeendeEinsatz value) beendEinsatz,
    required TResult Function(SignalProblem value) signalProblem,
    required TResult Function(StarteArbeitszeit value) starteArbeitszeit,
    required TResult Function(StarteFahrt value) starteFahrt,
    required TResult Function(StartePause value) startePause,
    required TResult Function(StarteEinsatz value) starteEinsatz,
    required TResult Function(LoadState value) loadState,
    required TResult Function(AddTaetigkeit value) addTaetigkeit,
    required TResult Function(RemoveTaetigkeit value) removeTaetigkeit,
    required TResult Function(AddKunde value) addKunde,
    required TResult Function(RemoveKunde value) removeKunde,
    required TResult Function(AddAbwTaetigkeit value) addAbwTaetigkeit,
    required TResult Function(RemoveAbwTaetigkeit value) removeAbwTaetigkeit,
  }) {
    return addTaetigkeit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
  }) {
    return addTaetigkeit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (addTaetigkeit != null) {
      return addTaetigkeit(this);
    }
    return orElse();
  }
}

abstract class AddTaetigkeit implements AbrechnungEvent {
  const factory AddTaetigkeit(Taetigkeit taetigkeit) = _$AddTaetigkeit;

  Taetigkeit get taetigkeit;
  @JsonKey(ignore: true)
  $AddTaetigkeitCopyWith<AddTaetigkeit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveTaetigkeitCopyWith<$Res> {
  factory $RemoveTaetigkeitCopyWith(
          RemoveTaetigkeit value, $Res Function(RemoveTaetigkeit) then) =
      _$RemoveTaetigkeitCopyWithImpl<$Res>;
  $Res call({Taetigkeit taetigkeit});

  $TaetigkeitCopyWith<$Res> get taetigkeit;
}

/// @nodoc
class _$RemoveTaetigkeitCopyWithImpl<$Res>
    extends _$AbrechnungEventCopyWithImpl<$Res>
    implements $RemoveTaetigkeitCopyWith<$Res> {
  _$RemoveTaetigkeitCopyWithImpl(
      RemoveTaetigkeit _value, $Res Function(RemoveTaetigkeit) _then)
      : super(_value, (v) => _then(v as RemoveTaetigkeit));

  @override
  RemoveTaetigkeit get _value => super._value as RemoveTaetigkeit;

  @override
  $Res call({
    Object? taetigkeit = freezed,
  }) {
    return _then(RemoveTaetigkeit(
      taetigkeit == freezed
          ? _value.taetigkeit
          : taetigkeit // ignore: cast_nullable_to_non_nullable
              as Taetigkeit,
    ));
  }

  @override
  $TaetigkeitCopyWith<$Res> get taetigkeit {
    return $TaetigkeitCopyWith<$Res>(_value.taetigkeit, (value) {
      return _then(_value.copyWith(taetigkeit: value));
    });
  }
}

/// @nodoc

class _$RemoveTaetigkeit
    with DiagnosticableTreeMixin
    implements RemoveTaetigkeit {
  const _$RemoveTaetigkeit(this.taetigkeit);

  @override
  final Taetigkeit taetigkeit;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbrechnungEvent.removeTaetigkeit(taetigkeit: $taetigkeit)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbrechnungEvent.removeTaetigkeit'))
      ..add(DiagnosticsProperty('taetigkeit', taetigkeit));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoveTaetigkeit &&
            const DeepCollectionEquality()
                .equals(other.taetigkeit, taetigkeit));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(taetigkeit));

  @JsonKey(ignore: true)
  @override
  $RemoveTaetigkeitCopyWith<RemoveTaetigkeit> get copyWith =>
      _$RemoveTaetigkeitCopyWithImpl<RemoveTaetigkeit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeArbeitszeit,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)
        beendePause,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendEinsatz,
    required TResult Function(AbrechnungProblem problem) signalProblem,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        starteArbeitszeit,
    required TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)
        starteFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        startePause,
    required TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)
        starteEinsatz,
    required TResult Function() loadState,
    required TResult Function(Taetigkeit taetigkeit) addTaetigkeit,
    required TResult Function(Taetigkeit taetigkeit) removeTaetigkeit,
    required TResult Function(Kunde kunde) addKunde,
    required TResult Function(Kunde kunde) removeKunde,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        addAbwTaetigkeit,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        removeAbwTaetigkeit,
  }) {
    return removeTaetigkeit(taetigkeit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
  }) {
    return removeTaetigkeit?.call(taetigkeit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (removeTaetigkeit != null) {
      return removeTaetigkeit(taetigkeit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeendeArbeitszeit value) beendeArbeitszeit,
    required TResult Function(BeendeFahrt value) beendeFahrt,
    required TResult Function(BeendePause value) beendePause,
    required TResult Function(BeendeEinsatz value) beendEinsatz,
    required TResult Function(SignalProblem value) signalProblem,
    required TResult Function(StarteArbeitszeit value) starteArbeitszeit,
    required TResult Function(StarteFahrt value) starteFahrt,
    required TResult Function(StartePause value) startePause,
    required TResult Function(StarteEinsatz value) starteEinsatz,
    required TResult Function(LoadState value) loadState,
    required TResult Function(AddTaetigkeit value) addTaetigkeit,
    required TResult Function(RemoveTaetigkeit value) removeTaetigkeit,
    required TResult Function(AddKunde value) addKunde,
    required TResult Function(RemoveKunde value) removeKunde,
    required TResult Function(AddAbwTaetigkeit value) addAbwTaetigkeit,
    required TResult Function(RemoveAbwTaetigkeit value) removeAbwTaetigkeit,
  }) {
    return removeTaetigkeit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
  }) {
    return removeTaetigkeit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (removeTaetigkeit != null) {
      return removeTaetigkeit(this);
    }
    return orElse();
  }
}

abstract class RemoveTaetigkeit implements AbrechnungEvent {
  const factory RemoveTaetigkeit(Taetigkeit taetigkeit) = _$RemoveTaetigkeit;

  Taetigkeit get taetigkeit;
  @JsonKey(ignore: true)
  $RemoveTaetigkeitCopyWith<RemoveTaetigkeit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddKundeCopyWith<$Res> {
  factory $AddKundeCopyWith(AddKunde value, $Res Function(AddKunde) then) =
      _$AddKundeCopyWithImpl<$Res>;
  $Res call({Kunde kunde});

  $KundeCopyWith<$Res> get kunde;
}

/// @nodoc
class _$AddKundeCopyWithImpl<$Res> extends _$AbrechnungEventCopyWithImpl<$Res>
    implements $AddKundeCopyWith<$Res> {
  _$AddKundeCopyWithImpl(AddKunde _value, $Res Function(AddKunde) _then)
      : super(_value, (v) => _then(v as AddKunde));

  @override
  AddKunde get _value => super._value as AddKunde;

  @override
  $Res call({
    Object? kunde = freezed,
  }) {
    return _then(AddKunde(
      kunde == freezed
          ? _value.kunde
          : kunde // ignore: cast_nullable_to_non_nullable
              as Kunde,
    ));
  }

  @override
  $KundeCopyWith<$Res> get kunde {
    return $KundeCopyWith<$Res>(_value.kunde, (value) {
      return _then(_value.copyWith(kunde: value));
    });
  }
}

/// @nodoc

class _$AddKunde with DiagnosticableTreeMixin implements AddKunde {
  const _$AddKunde(this.kunde);

  @override
  final Kunde kunde;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbrechnungEvent.addKunde(kunde: $kunde)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbrechnungEvent.addKunde'))
      ..add(DiagnosticsProperty('kunde', kunde));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddKunde &&
            const DeepCollectionEquality().equals(other.kunde, kunde));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(kunde));

  @JsonKey(ignore: true)
  @override
  $AddKundeCopyWith<AddKunde> get copyWith =>
      _$AddKundeCopyWithImpl<AddKunde>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeArbeitszeit,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)
        beendePause,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendEinsatz,
    required TResult Function(AbrechnungProblem problem) signalProblem,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        starteArbeitszeit,
    required TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)
        starteFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        startePause,
    required TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)
        starteEinsatz,
    required TResult Function() loadState,
    required TResult Function(Taetigkeit taetigkeit) addTaetigkeit,
    required TResult Function(Taetigkeit taetigkeit) removeTaetigkeit,
    required TResult Function(Kunde kunde) addKunde,
    required TResult Function(Kunde kunde) removeKunde,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        addAbwTaetigkeit,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        removeAbwTaetigkeit,
  }) {
    return addKunde(kunde);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
  }) {
    return addKunde?.call(kunde);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (addKunde != null) {
      return addKunde(kunde);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeendeArbeitszeit value) beendeArbeitszeit,
    required TResult Function(BeendeFahrt value) beendeFahrt,
    required TResult Function(BeendePause value) beendePause,
    required TResult Function(BeendeEinsatz value) beendEinsatz,
    required TResult Function(SignalProblem value) signalProblem,
    required TResult Function(StarteArbeitszeit value) starteArbeitszeit,
    required TResult Function(StarteFahrt value) starteFahrt,
    required TResult Function(StartePause value) startePause,
    required TResult Function(StarteEinsatz value) starteEinsatz,
    required TResult Function(LoadState value) loadState,
    required TResult Function(AddTaetigkeit value) addTaetigkeit,
    required TResult Function(RemoveTaetigkeit value) removeTaetigkeit,
    required TResult Function(AddKunde value) addKunde,
    required TResult Function(RemoveKunde value) removeKunde,
    required TResult Function(AddAbwTaetigkeit value) addAbwTaetigkeit,
    required TResult Function(RemoveAbwTaetigkeit value) removeAbwTaetigkeit,
  }) {
    return addKunde(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
  }) {
    return addKunde?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (addKunde != null) {
      return addKunde(this);
    }
    return orElse();
  }
}

abstract class AddKunde implements AbrechnungEvent {
  const factory AddKunde(Kunde kunde) = _$AddKunde;

  Kunde get kunde;
  @JsonKey(ignore: true)
  $AddKundeCopyWith<AddKunde> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveKundeCopyWith<$Res> {
  factory $RemoveKundeCopyWith(
          RemoveKunde value, $Res Function(RemoveKunde) then) =
      _$RemoveKundeCopyWithImpl<$Res>;
  $Res call({Kunde kunde});

  $KundeCopyWith<$Res> get kunde;
}

/// @nodoc
class _$RemoveKundeCopyWithImpl<$Res>
    extends _$AbrechnungEventCopyWithImpl<$Res>
    implements $RemoveKundeCopyWith<$Res> {
  _$RemoveKundeCopyWithImpl(
      RemoveKunde _value, $Res Function(RemoveKunde) _then)
      : super(_value, (v) => _then(v as RemoveKunde));

  @override
  RemoveKunde get _value => super._value as RemoveKunde;

  @override
  $Res call({
    Object? kunde = freezed,
  }) {
    return _then(RemoveKunde(
      kunde == freezed
          ? _value.kunde
          : kunde // ignore: cast_nullable_to_non_nullable
              as Kunde,
    ));
  }

  @override
  $KundeCopyWith<$Res> get kunde {
    return $KundeCopyWith<$Res>(_value.kunde, (value) {
      return _then(_value.copyWith(kunde: value));
    });
  }
}

/// @nodoc

class _$RemoveKunde with DiagnosticableTreeMixin implements RemoveKunde {
  const _$RemoveKunde(this.kunde);

  @override
  final Kunde kunde;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbrechnungEvent.removeKunde(kunde: $kunde)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbrechnungEvent.removeKunde'))
      ..add(DiagnosticsProperty('kunde', kunde));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoveKunde &&
            const DeepCollectionEquality().equals(other.kunde, kunde));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(kunde));

  @JsonKey(ignore: true)
  @override
  $RemoveKundeCopyWith<RemoveKunde> get copyWith =>
      _$RemoveKundeCopyWithImpl<RemoveKunde>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeArbeitszeit,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)
        beendePause,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendEinsatz,
    required TResult Function(AbrechnungProblem problem) signalProblem,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        starteArbeitszeit,
    required TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)
        starteFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        startePause,
    required TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)
        starteEinsatz,
    required TResult Function() loadState,
    required TResult Function(Taetigkeit taetigkeit) addTaetigkeit,
    required TResult Function(Taetigkeit taetigkeit) removeTaetigkeit,
    required TResult Function(Kunde kunde) addKunde,
    required TResult Function(Kunde kunde) removeKunde,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        addAbwTaetigkeit,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        removeAbwTaetigkeit,
  }) {
    return removeKunde(kunde);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
  }) {
    return removeKunde?.call(kunde);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (removeKunde != null) {
      return removeKunde(kunde);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeendeArbeitszeit value) beendeArbeitszeit,
    required TResult Function(BeendeFahrt value) beendeFahrt,
    required TResult Function(BeendePause value) beendePause,
    required TResult Function(BeendeEinsatz value) beendEinsatz,
    required TResult Function(SignalProblem value) signalProblem,
    required TResult Function(StarteArbeitszeit value) starteArbeitszeit,
    required TResult Function(StarteFahrt value) starteFahrt,
    required TResult Function(StartePause value) startePause,
    required TResult Function(StarteEinsatz value) starteEinsatz,
    required TResult Function(LoadState value) loadState,
    required TResult Function(AddTaetigkeit value) addTaetigkeit,
    required TResult Function(RemoveTaetigkeit value) removeTaetigkeit,
    required TResult Function(AddKunde value) addKunde,
    required TResult Function(RemoveKunde value) removeKunde,
    required TResult Function(AddAbwTaetigkeit value) addAbwTaetigkeit,
    required TResult Function(RemoveAbwTaetigkeit value) removeAbwTaetigkeit,
  }) {
    return removeKunde(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
  }) {
    return removeKunde?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (removeKunde != null) {
      return removeKunde(this);
    }
    return orElse();
  }
}

abstract class RemoveKunde implements AbrechnungEvent {
  const factory RemoveKunde(Kunde kunde) = _$RemoveKunde;

  Kunde get kunde;
  @JsonKey(ignore: true)
  $RemoveKundeCopyWith<RemoveKunde> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAbwTaetigkeitCopyWith<$Res> {
  factory $AddAbwTaetigkeitCopyWith(
          AddAbwTaetigkeit value, $Res Function(AddAbwTaetigkeit) then) =
      _$AddAbwTaetigkeitCopyWithImpl<$Res>;
  $Res call({Kunde kunde, Taetigkeit taetigkeit});

  $KundeCopyWith<$Res> get kunde;
  $TaetigkeitCopyWith<$Res> get taetigkeit;
}

/// @nodoc
class _$AddAbwTaetigkeitCopyWithImpl<$Res>
    extends _$AbrechnungEventCopyWithImpl<$Res>
    implements $AddAbwTaetigkeitCopyWith<$Res> {
  _$AddAbwTaetigkeitCopyWithImpl(
      AddAbwTaetigkeit _value, $Res Function(AddAbwTaetigkeit) _then)
      : super(_value, (v) => _then(v as AddAbwTaetigkeit));

  @override
  AddAbwTaetigkeit get _value => super._value as AddAbwTaetigkeit;

  @override
  $Res call({
    Object? kunde = freezed,
    Object? taetigkeit = freezed,
  }) {
    return _then(AddAbwTaetigkeit(
      kunde == freezed
          ? _value.kunde
          : kunde // ignore: cast_nullable_to_non_nullable
              as Kunde,
      taetigkeit == freezed
          ? _value.taetigkeit
          : taetigkeit // ignore: cast_nullable_to_non_nullable
              as Taetigkeit,
    ));
  }

  @override
  $KundeCopyWith<$Res> get kunde {
    return $KundeCopyWith<$Res>(_value.kunde, (value) {
      return _then(_value.copyWith(kunde: value));
    });
  }

  @override
  $TaetigkeitCopyWith<$Res> get taetigkeit {
    return $TaetigkeitCopyWith<$Res>(_value.taetigkeit, (value) {
      return _then(_value.copyWith(taetigkeit: value));
    });
  }
}

/// @nodoc

class _$AddAbwTaetigkeit
    with DiagnosticableTreeMixin
    implements AddAbwTaetigkeit {
  const _$AddAbwTaetigkeit(this.kunde, this.taetigkeit);

  @override
  final Kunde kunde;
  @override
  final Taetigkeit taetigkeit;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbrechnungEvent.addAbwTaetigkeit(kunde: $kunde, taetigkeit: $taetigkeit)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbrechnungEvent.addAbwTaetigkeit'))
      ..add(DiagnosticsProperty('kunde', kunde))
      ..add(DiagnosticsProperty('taetigkeit', taetigkeit));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddAbwTaetigkeit &&
            const DeepCollectionEquality().equals(other.kunde, kunde) &&
            const DeepCollectionEquality()
                .equals(other.taetigkeit, taetigkeit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(kunde),
      const DeepCollectionEquality().hash(taetigkeit));

  @JsonKey(ignore: true)
  @override
  $AddAbwTaetigkeitCopyWith<AddAbwTaetigkeit> get copyWith =>
      _$AddAbwTaetigkeitCopyWithImpl<AddAbwTaetigkeit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeArbeitszeit,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)
        beendePause,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendEinsatz,
    required TResult Function(AbrechnungProblem problem) signalProblem,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        starteArbeitszeit,
    required TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)
        starteFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        startePause,
    required TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)
        starteEinsatz,
    required TResult Function() loadState,
    required TResult Function(Taetigkeit taetigkeit) addTaetigkeit,
    required TResult Function(Taetigkeit taetigkeit) removeTaetigkeit,
    required TResult Function(Kunde kunde) addKunde,
    required TResult Function(Kunde kunde) removeKunde,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        addAbwTaetigkeit,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        removeAbwTaetigkeit,
  }) {
    return addAbwTaetigkeit(kunde, taetigkeit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
  }) {
    return addAbwTaetigkeit?.call(kunde, taetigkeit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (addAbwTaetigkeit != null) {
      return addAbwTaetigkeit(kunde, taetigkeit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeendeArbeitszeit value) beendeArbeitszeit,
    required TResult Function(BeendeFahrt value) beendeFahrt,
    required TResult Function(BeendePause value) beendePause,
    required TResult Function(BeendeEinsatz value) beendEinsatz,
    required TResult Function(SignalProblem value) signalProblem,
    required TResult Function(StarteArbeitszeit value) starteArbeitszeit,
    required TResult Function(StarteFahrt value) starteFahrt,
    required TResult Function(StartePause value) startePause,
    required TResult Function(StarteEinsatz value) starteEinsatz,
    required TResult Function(LoadState value) loadState,
    required TResult Function(AddTaetigkeit value) addTaetigkeit,
    required TResult Function(RemoveTaetigkeit value) removeTaetigkeit,
    required TResult Function(AddKunde value) addKunde,
    required TResult Function(RemoveKunde value) removeKunde,
    required TResult Function(AddAbwTaetigkeit value) addAbwTaetigkeit,
    required TResult Function(RemoveAbwTaetigkeit value) removeAbwTaetigkeit,
  }) {
    return addAbwTaetigkeit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
  }) {
    return addAbwTaetigkeit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (addAbwTaetigkeit != null) {
      return addAbwTaetigkeit(this);
    }
    return orElse();
  }
}

abstract class AddAbwTaetigkeit implements AbrechnungEvent {
  const factory AddAbwTaetigkeit(Kunde kunde, Taetigkeit taetigkeit) =
      _$AddAbwTaetigkeit;

  Kunde get kunde;
  Taetigkeit get taetigkeit;
  @JsonKey(ignore: true)
  $AddAbwTaetigkeitCopyWith<AddAbwTaetigkeit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveAbwTaetigkeitCopyWith<$Res> {
  factory $RemoveAbwTaetigkeitCopyWith(
          RemoveAbwTaetigkeit value, $Res Function(RemoveAbwTaetigkeit) then) =
      _$RemoveAbwTaetigkeitCopyWithImpl<$Res>;
  $Res call({Kunde kunde, Taetigkeit taetigkeit});

  $KundeCopyWith<$Res> get kunde;
  $TaetigkeitCopyWith<$Res> get taetigkeit;
}

/// @nodoc
class _$RemoveAbwTaetigkeitCopyWithImpl<$Res>
    extends _$AbrechnungEventCopyWithImpl<$Res>
    implements $RemoveAbwTaetigkeitCopyWith<$Res> {
  _$RemoveAbwTaetigkeitCopyWithImpl(
      RemoveAbwTaetigkeit _value, $Res Function(RemoveAbwTaetigkeit) _then)
      : super(_value, (v) => _then(v as RemoveAbwTaetigkeit));

  @override
  RemoveAbwTaetigkeit get _value => super._value as RemoveAbwTaetigkeit;

  @override
  $Res call({
    Object? kunde = freezed,
    Object? taetigkeit = freezed,
  }) {
    return _then(RemoveAbwTaetigkeit(
      kunde == freezed
          ? _value.kunde
          : kunde // ignore: cast_nullable_to_non_nullable
              as Kunde,
      taetigkeit == freezed
          ? _value.taetigkeit
          : taetigkeit // ignore: cast_nullable_to_non_nullable
              as Taetigkeit,
    ));
  }

  @override
  $KundeCopyWith<$Res> get kunde {
    return $KundeCopyWith<$Res>(_value.kunde, (value) {
      return _then(_value.copyWith(kunde: value));
    });
  }

  @override
  $TaetigkeitCopyWith<$Res> get taetigkeit {
    return $TaetigkeitCopyWith<$Res>(_value.taetigkeit, (value) {
      return _then(_value.copyWith(taetigkeit: value));
    });
  }
}

/// @nodoc

class _$RemoveAbwTaetigkeit
    with DiagnosticableTreeMixin
    implements RemoveAbwTaetigkeit {
  const _$RemoveAbwTaetigkeit(this.kunde, this.taetigkeit);

  @override
  final Kunde kunde;
  @override
  final Taetigkeit taetigkeit;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbrechnungEvent.removeAbwTaetigkeit(kunde: $kunde, taetigkeit: $taetigkeit)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbrechnungEvent.removeAbwTaetigkeit'))
      ..add(DiagnosticsProperty('kunde', kunde))
      ..add(DiagnosticsProperty('taetigkeit', taetigkeit));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoveAbwTaetigkeit &&
            const DeepCollectionEquality().equals(other.kunde, kunde) &&
            const DeepCollectionEquality()
                .equals(other.taetigkeit, taetigkeit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(kunde),
      const DeepCollectionEquality().hash(taetigkeit));

  @JsonKey(ignore: true)
  @override
  $RemoveAbwTaetigkeitCopyWith<RemoveAbwTaetigkeit> get copyWith =>
      _$RemoveAbwTaetigkeitCopyWithImpl<RemoveAbwTaetigkeit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeArbeitszeit,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendeFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)
        beendePause,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        beendEinsatz,
    required TResult Function(AbrechnungProblem problem) signalProblem,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        starteArbeitszeit,
    required TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)
        starteFahrt,
    required TResult Function(DateTime timestampEdited, DateTime? timestamp)
        startePause,
    required TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)
        starteEinsatz,
    required TResult Function() loadState,
    required TResult Function(Taetigkeit taetigkeit) addTaetigkeit,
    required TResult Function(Taetigkeit taetigkeit) removeTaetigkeit,
    required TResult Function(Kunde kunde) addKunde,
    required TResult Function(Kunde kunde) removeKunde,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        addAbwTaetigkeit,
    required TResult Function(Kunde kunde, Taetigkeit taetigkeit)
        removeAbwTaetigkeit,
  }) {
    return removeAbwTaetigkeit(kunde, taetigkeit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
  }) {
    return removeAbwTaetigkeit?.call(kunde, taetigkeit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeArbeitszeit,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendeFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp,
            bool? continueTaetigkeit)?
        beendePause,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        beendEinsatz,
    TResult Function(AbrechnungProblem problem)? signalProblem,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        starteArbeitszeit,
    TResult Function(
            DateTime timestampEdited, Einsatz? einsatz, DateTime? timestamp)?
        starteFahrt,
    TResult Function(DateTime timestampEdited, DateTime? timestamp)?
        startePause,
    TResult Function(
            DateTime timestampEdited, Einsatz einsatz, DateTime? timestamp)?
        starteEinsatz,
    TResult Function()? loadState,
    TResult Function(Taetigkeit taetigkeit)? addTaetigkeit,
    TResult Function(Taetigkeit taetigkeit)? removeTaetigkeit,
    TResult Function(Kunde kunde)? addKunde,
    TResult Function(Kunde kunde)? removeKunde,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? addAbwTaetigkeit,
    TResult Function(Kunde kunde, Taetigkeit taetigkeit)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (removeAbwTaetigkeit != null) {
      return removeAbwTaetigkeit(kunde, taetigkeit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeendeArbeitszeit value) beendeArbeitszeit,
    required TResult Function(BeendeFahrt value) beendeFahrt,
    required TResult Function(BeendePause value) beendePause,
    required TResult Function(BeendeEinsatz value) beendEinsatz,
    required TResult Function(SignalProblem value) signalProblem,
    required TResult Function(StarteArbeitszeit value) starteArbeitszeit,
    required TResult Function(StarteFahrt value) starteFahrt,
    required TResult Function(StartePause value) startePause,
    required TResult Function(StarteEinsatz value) starteEinsatz,
    required TResult Function(LoadState value) loadState,
    required TResult Function(AddTaetigkeit value) addTaetigkeit,
    required TResult Function(RemoveTaetigkeit value) removeTaetigkeit,
    required TResult Function(AddKunde value) addKunde,
    required TResult Function(RemoveKunde value) removeKunde,
    required TResult Function(AddAbwTaetigkeit value) addAbwTaetigkeit,
    required TResult Function(RemoveAbwTaetigkeit value) removeAbwTaetigkeit,
  }) {
    return removeAbwTaetigkeit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
  }) {
    return removeAbwTaetigkeit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeendeArbeitszeit value)? beendeArbeitszeit,
    TResult Function(BeendeFahrt value)? beendeFahrt,
    TResult Function(BeendePause value)? beendePause,
    TResult Function(BeendeEinsatz value)? beendEinsatz,
    TResult Function(SignalProblem value)? signalProblem,
    TResult Function(StarteArbeitszeit value)? starteArbeitszeit,
    TResult Function(StarteFahrt value)? starteFahrt,
    TResult Function(StartePause value)? startePause,
    TResult Function(StarteEinsatz value)? starteEinsatz,
    TResult Function(LoadState value)? loadState,
    TResult Function(AddTaetigkeit value)? addTaetigkeit,
    TResult Function(RemoveTaetigkeit value)? removeTaetigkeit,
    TResult Function(AddKunde value)? addKunde,
    TResult Function(RemoveKunde value)? removeKunde,
    TResult Function(AddAbwTaetigkeit value)? addAbwTaetigkeit,
    TResult Function(RemoveAbwTaetigkeit value)? removeAbwTaetigkeit,
    required TResult orElse(),
  }) {
    if (removeAbwTaetigkeit != null) {
      return removeAbwTaetigkeit(this);
    }
    return orElse();
  }
}

abstract class RemoveAbwTaetigkeit implements AbrechnungEvent {
  const factory RemoveAbwTaetigkeit(Kunde kunde, Taetigkeit taetigkeit) =
      _$RemoveAbwTaetigkeit;

  Kunde get kunde;
  Taetigkeit get taetigkeit;
  @JsonKey(ignore: true)
  $RemoveAbwTaetigkeitCopyWith<RemoveAbwTaetigkeit> get copyWith =>
      throw _privateConstructorUsedError;
}
