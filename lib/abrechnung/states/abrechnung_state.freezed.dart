// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'abrechnung_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AbrechnungStateTearOff {
  const _$AbrechnungStateTearOff();

  _AbrechnungState call(
      {required AbrechnungPeriode abrechnungPeriode,
      required AbrechnungSettings abrechnungSettings}) {
    return _AbrechnungState(
      abrechnungPeriode: abrechnungPeriode,
      abrechnungSettings: abrechnungSettings,
    );
  }

  AbrechnungProblematic error(
      {required AbrechnungPeriode abrechnungPeriode,
      required AbrechnungSettings abrechnungSettings,
      required AbrechnungProblem problem}) {
    return AbrechnungProblematic(
      abrechnungPeriode: abrechnungPeriode,
      abrechnungSettings: abrechnungSettings,
      problem: problem,
    );
  }

  AbrechnungLoading loading(
      {AbrechnungPeriode abrechnungPeriode = const AbrechnungPeriode(),
      AbrechnungSettings abrechnungSettings = const AbrechnungSettings()}) {
    return AbrechnungLoading(
      abrechnungPeriode: abrechnungPeriode,
      abrechnungSettings: abrechnungSettings,
    );
  }

  AbrechnungInitial initial(
      {AbrechnungPeriode abrechnungPeriode = const AbrechnungPeriode(),
      AbrechnungSettings abrechnungSettings = const AbrechnungSettings()}) {
    return AbrechnungInitial(
      abrechnungPeriode: abrechnungPeriode,
      abrechnungSettings: abrechnungSettings,
    );
  }
}

/// @nodoc
const $AbrechnungState = _$AbrechnungStateTearOff();

/// @nodoc
mixin _$AbrechnungState {
  AbrechnungPeriode get abrechnungPeriode => throw _privateConstructorUsedError;
  AbrechnungSettings get abrechnungSettings =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)
        $default, {
    required TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings, AbrechnungProblem problem)
        error,
    required TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)
        loading,
    required TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        $default, {
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings, AbrechnungProblem problem)?
        error,
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        loading,
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        $default, {
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings, AbrechnungProblem problem)?
        error,
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        loading,
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AbrechnungState value) $default, {
    required TResult Function(AbrechnungProblematic value) error,
    required TResult Function(AbrechnungLoading value) loading,
    required TResult Function(AbrechnungInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AbrechnungState value)? $default, {
    TResult Function(AbrechnungProblematic value)? error,
    TResult Function(AbrechnungLoading value)? loading,
    TResult Function(AbrechnungInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AbrechnungState value)? $default, {
    TResult Function(AbrechnungProblematic value)? error,
    TResult Function(AbrechnungLoading value)? loading,
    TResult Function(AbrechnungInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AbrechnungStateCopyWith<AbrechnungState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbrechnungStateCopyWith<$Res> {
  factory $AbrechnungStateCopyWith(
          AbrechnungState value, $Res Function(AbrechnungState) then) =
      _$AbrechnungStateCopyWithImpl<$Res>;
  $Res call(
      {AbrechnungPeriode abrechnungPeriode,
      AbrechnungSettings abrechnungSettings});

  $AbrechnungPeriodeCopyWith<$Res> get abrechnungPeriode;
  $AbrechnungSettingsCopyWith<$Res> get abrechnungSettings;
}

/// @nodoc
class _$AbrechnungStateCopyWithImpl<$Res>
    implements $AbrechnungStateCopyWith<$Res> {
  _$AbrechnungStateCopyWithImpl(this._value, this._then);

  final AbrechnungState _value;
  // ignore: unused_field
  final $Res Function(AbrechnungState) _then;

  @override
  $Res call({
    Object? abrechnungPeriode = freezed,
    Object? abrechnungSettings = freezed,
  }) {
    return _then(_value.copyWith(
      abrechnungPeriode: abrechnungPeriode == freezed
          ? _value.abrechnungPeriode
          : abrechnungPeriode // ignore: cast_nullable_to_non_nullable
              as AbrechnungPeriode,
      abrechnungSettings: abrechnungSettings == freezed
          ? _value.abrechnungSettings
          : abrechnungSettings // ignore: cast_nullable_to_non_nullable
              as AbrechnungSettings,
    ));
  }

  @override
  $AbrechnungPeriodeCopyWith<$Res> get abrechnungPeriode {
    return $AbrechnungPeriodeCopyWith<$Res>(_value.abrechnungPeriode, (value) {
      return _then(_value.copyWith(abrechnungPeriode: value));
    });
  }

  @override
  $AbrechnungSettingsCopyWith<$Res> get abrechnungSettings {
    return $AbrechnungSettingsCopyWith<$Res>(_value.abrechnungSettings,
        (value) {
      return _then(_value.copyWith(abrechnungSettings: value));
    });
  }
}

/// @nodoc
abstract class _$AbrechnungStateCopyWith<$Res>
    implements $AbrechnungStateCopyWith<$Res> {
  factory _$AbrechnungStateCopyWith(
          _AbrechnungState value, $Res Function(_AbrechnungState) then) =
      __$AbrechnungStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AbrechnungPeriode abrechnungPeriode,
      AbrechnungSettings abrechnungSettings});

  @override
  $AbrechnungPeriodeCopyWith<$Res> get abrechnungPeriode;
  @override
  $AbrechnungSettingsCopyWith<$Res> get abrechnungSettings;
}

/// @nodoc
class __$AbrechnungStateCopyWithImpl<$Res>
    extends _$AbrechnungStateCopyWithImpl<$Res>
    implements _$AbrechnungStateCopyWith<$Res> {
  __$AbrechnungStateCopyWithImpl(
      _AbrechnungState _value, $Res Function(_AbrechnungState) _then)
      : super(_value, (v) => _then(v as _AbrechnungState));

  @override
  _AbrechnungState get _value => super._value as _AbrechnungState;

  @override
  $Res call({
    Object? abrechnungPeriode = freezed,
    Object? abrechnungSettings = freezed,
  }) {
    return _then(_AbrechnungState(
      abrechnungPeriode: abrechnungPeriode == freezed
          ? _value.abrechnungPeriode
          : abrechnungPeriode // ignore: cast_nullable_to_non_nullable
              as AbrechnungPeriode,
      abrechnungSettings: abrechnungSettings == freezed
          ? _value.abrechnungSettings
          : abrechnungSettings // ignore: cast_nullable_to_non_nullable
              as AbrechnungSettings,
    ));
  }
}

/// @nodoc

class _$_AbrechnungState extends _AbrechnungState with DiagnosticableTreeMixin {
  const _$_AbrechnungState(
      {required this.abrechnungPeriode, required this.abrechnungSettings})
      : super._();

  @override
  final AbrechnungPeriode abrechnungPeriode;
  @override
  final AbrechnungSettings abrechnungSettings;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbrechnungState(abrechnungPeriode: $abrechnungPeriode, abrechnungSettings: $abrechnungSettings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbrechnungState'))
      ..add(DiagnosticsProperty('abrechnungPeriode', abrechnungPeriode))
      ..add(DiagnosticsProperty('abrechnungSettings', abrechnungSettings));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AbrechnungState &&
            const DeepCollectionEquality()
                .equals(other.abrechnungPeriode, abrechnungPeriode) &&
            const DeepCollectionEquality()
                .equals(other.abrechnungSettings, abrechnungSettings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(abrechnungPeriode),
      const DeepCollectionEquality().hash(abrechnungSettings));

  @JsonKey(ignore: true)
  @override
  _$AbrechnungStateCopyWith<_AbrechnungState> get copyWith =>
      __$AbrechnungStateCopyWithImpl<_AbrechnungState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)
        $default, {
    required TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings, AbrechnungProblem problem)
        error,
    required TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)
        loading,
    required TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)
        initial,
  }) {
    return $default(abrechnungPeriode, abrechnungSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        $default, {
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings, AbrechnungProblem problem)?
        error,
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        loading,
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        initial,
  }) {
    return $default?.call(abrechnungPeriode, abrechnungSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        $default, {
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings, AbrechnungProblem problem)?
        error,
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        loading,
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(abrechnungPeriode, abrechnungSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AbrechnungState value) $default, {
    required TResult Function(AbrechnungProblematic value) error,
    required TResult Function(AbrechnungLoading value) loading,
    required TResult Function(AbrechnungInitial value) initial,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AbrechnungState value)? $default, {
    TResult Function(AbrechnungProblematic value)? error,
    TResult Function(AbrechnungLoading value)? loading,
    TResult Function(AbrechnungInitial value)? initial,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AbrechnungState value)? $default, {
    TResult Function(AbrechnungProblematic value)? error,
    TResult Function(AbrechnungLoading value)? loading,
    TResult Function(AbrechnungInitial value)? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _AbrechnungState extends AbrechnungState {
  const factory _AbrechnungState(
      {required AbrechnungPeriode abrechnungPeriode,
      required AbrechnungSettings abrechnungSettings}) = _$_AbrechnungState;
  const _AbrechnungState._() : super._();

  @override
  AbrechnungPeriode get abrechnungPeriode;
  @override
  AbrechnungSettings get abrechnungSettings;
  @override
  @JsonKey(ignore: true)
  _$AbrechnungStateCopyWith<_AbrechnungState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbrechnungProblematicCopyWith<$Res>
    implements $AbrechnungStateCopyWith<$Res> {
  factory $AbrechnungProblematicCopyWith(AbrechnungProblematic value,
          $Res Function(AbrechnungProblematic) then) =
      _$AbrechnungProblematicCopyWithImpl<$Res>;
  @override
  $Res call(
      {AbrechnungPeriode abrechnungPeriode,
      AbrechnungSettings abrechnungSettings,
      AbrechnungProblem problem});

  @override
  $AbrechnungPeriodeCopyWith<$Res> get abrechnungPeriode;
  @override
  $AbrechnungSettingsCopyWith<$Res> get abrechnungSettings;
}

/// @nodoc
class _$AbrechnungProblematicCopyWithImpl<$Res>
    extends _$AbrechnungStateCopyWithImpl<$Res>
    implements $AbrechnungProblematicCopyWith<$Res> {
  _$AbrechnungProblematicCopyWithImpl(
      AbrechnungProblematic _value, $Res Function(AbrechnungProblematic) _then)
      : super(_value, (v) => _then(v as AbrechnungProblematic));

  @override
  AbrechnungProblematic get _value => super._value as AbrechnungProblematic;

  @override
  $Res call({
    Object? abrechnungPeriode = freezed,
    Object? abrechnungSettings = freezed,
    Object? problem = freezed,
  }) {
    return _then(AbrechnungProblematic(
      abrechnungPeriode: abrechnungPeriode == freezed
          ? _value.abrechnungPeriode
          : abrechnungPeriode // ignore: cast_nullable_to_non_nullable
              as AbrechnungPeriode,
      abrechnungSettings: abrechnungSettings == freezed
          ? _value.abrechnungSettings
          : abrechnungSettings // ignore: cast_nullable_to_non_nullable
              as AbrechnungSettings,
      problem: problem == freezed
          ? _value.problem
          : problem // ignore: cast_nullable_to_non_nullable
              as AbrechnungProblem,
    ));
  }
}

/// @nodoc

class _$AbrechnungProblematic extends AbrechnungProblematic
    with DiagnosticableTreeMixin {
  const _$AbrechnungProblematic(
      {required this.abrechnungPeriode,
      required this.abrechnungSettings,
      required this.problem})
      : super._();

  @override
  final AbrechnungPeriode abrechnungPeriode;
  @override
  final AbrechnungSettings abrechnungSettings;
  @override
  final AbrechnungProblem problem;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbrechnungState.error(abrechnungPeriode: $abrechnungPeriode, abrechnungSettings: $abrechnungSettings, problem: $problem)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbrechnungState.error'))
      ..add(DiagnosticsProperty('abrechnungPeriode', abrechnungPeriode))
      ..add(DiagnosticsProperty('abrechnungSettings', abrechnungSettings))
      ..add(DiagnosticsProperty('problem', problem));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AbrechnungProblematic &&
            const DeepCollectionEquality()
                .equals(other.abrechnungPeriode, abrechnungPeriode) &&
            const DeepCollectionEquality()
                .equals(other.abrechnungSettings, abrechnungSettings) &&
            const DeepCollectionEquality().equals(other.problem, problem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(abrechnungPeriode),
      const DeepCollectionEquality().hash(abrechnungSettings),
      const DeepCollectionEquality().hash(problem));

  @JsonKey(ignore: true)
  @override
  $AbrechnungProblematicCopyWith<AbrechnungProblematic> get copyWith =>
      _$AbrechnungProblematicCopyWithImpl<AbrechnungProblematic>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)
        $default, {
    required TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings, AbrechnungProblem problem)
        error,
    required TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)
        loading,
    required TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)
        initial,
  }) {
    return error(abrechnungPeriode, abrechnungSettings, problem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        $default, {
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings, AbrechnungProblem problem)?
        error,
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        loading,
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        initial,
  }) {
    return error?.call(abrechnungPeriode, abrechnungSettings, problem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        $default, {
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings, AbrechnungProblem problem)?
        error,
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        loading,
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        initial,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(abrechnungPeriode, abrechnungSettings, problem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AbrechnungState value) $default, {
    required TResult Function(AbrechnungProblematic value) error,
    required TResult Function(AbrechnungLoading value) loading,
    required TResult Function(AbrechnungInitial value) initial,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AbrechnungState value)? $default, {
    TResult Function(AbrechnungProblematic value)? error,
    TResult Function(AbrechnungLoading value)? loading,
    TResult Function(AbrechnungInitial value)? initial,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AbrechnungState value)? $default, {
    TResult Function(AbrechnungProblematic value)? error,
    TResult Function(AbrechnungLoading value)? loading,
    TResult Function(AbrechnungInitial value)? initial,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AbrechnungProblematic extends AbrechnungState {
  const factory AbrechnungProblematic(
      {required AbrechnungPeriode abrechnungPeriode,
      required AbrechnungSettings abrechnungSettings,
      required AbrechnungProblem problem}) = _$AbrechnungProblematic;
  const AbrechnungProblematic._() : super._();

  @override
  AbrechnungPeriode get abrechnungPeriode;
  @override
  AbrechnungSettings get abrechnungSettings;
  AbrechnungProblem get problem;
  @override
  @JsonKey(ignore: true)
  $AbrechnungProblematicCopyWith<AbrechnungProblematic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbrechnungLoadingCopyWith<$Res>
    implements $AbrechnungStateCopyWith<$Res> {
  factory $AbrechnungLoadingCopyWith(
          AbrechnungLoading value, $Res Function(AbrechnungLoading) then) =
      _$AbrechnungLoadingCopyWithImpl<$Res>;
  @override
  $Res call(
      {AbrechnungPeriode abrechnungPeriode,
      AbrechnungSettings abrechnungSettings});

  @override
  $AbrechnungPeriodeCopyWith<$Res> get abrechnungPeriode;
  @override
  $AbrechnungSettingsCopyWith<$Res> get abrechnungSettings;
}

/// @nodoc
class _$AbrechnungLoadingCopyWithImpl<$Res>
    extends _$AbrechnungStateCopyWithImpl<$Res>
    implements $AbrechnungLoadingCopyWith<$Res> {
  _$AbrechnungLoadingCopyWithImpl(
      AbrechnungLoading _value, $Res Function(AbrechnungLoading) _then)
      : super(_value, (v) => _then(v as AbrechnungLoading));

  @override
  AbrechnungLoading get _value => super._value as AbrechnungLoading;

  @override
  $Res call({
    Object? abrechnungPeriode = freezed,
    Object? abrechnungSettings = freezed,
  }) {
    return _then(AbrechnungLoading(
      abrechnungPeriode: abrechnungPeriode == freezed
          ? _value.abrechnungPeriode
          : abrechnungPeriode // ignore: cast_nullable_to_non_nullable
              as AbrechnungPeriode,
      abrechnungSettings: abrechnungSettings == freezed
          ? _value.abrechnungSettings
          : abrechnungSettings // ignore: cast_nullable_to_non_nullable
              as AbrechnungSettings,
    ));
  }
}

/// @nodoc

class _$AbrechnungLoading extends AbrechnungLoading
    with DiagnosticableTreeMixin {
  const _$AbrechnungLoading(
      {this.abrechnungPeriode = const AbrechnungPeriode(),
      this.abrechnungSettings = const AbrechnungSettings()})
      : super._();

  @JsonKey()
  @override
  final AbrechnungPeriode abrechnungPeriode;
  @JsonKey()
  @override
  final AbrechnungSettings abrechnungSettings;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbrechnungState.loading(abrechnungPeriode: $abrechnungPeriode, abrechnungSettings: $abrechnungSettings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbrechnungState.loading'))
      ..add(DiagnosticsProperty('abrechnungPeriode', abrechnungPeriode))
      ..add(DiagnosticsProperty('abrechnungSettings', abrechnungSettings));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AbrechnungLoading &&
            const DeepCollectionEquality()
                .equals(other.abrechnungPeriode, abrechnungPeriode) &&
            const DeepCollectionEquality()
                .equals(other.abrechnungSettings, abrechnungSettings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(abrechnungPeriode),
      const DeepCollectionEquality().hash(abrechnungSettings));

  @JsonKey(ignore: true)
  @override
  $AbrechnungLoadingCopyWith<AbrechnungLoading> get copyWith =>
      _$AbrechnungLoadingCopyWithImpl<AbrechnungLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)
        $default, {
    required TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings, AbrechnungProblem problem)
        error,
    required TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)
        loading,
    required TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)
        initial,
  }) {
    return loading(abrechnungPeriode, abrechnungSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        $default, {
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings, AbrechnungProblem problem)?
        error,
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        loading,
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        initial,
  }) {
    return loading?.call(abrechnungPeriode, abrechnungSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        $default, {
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings, AbrechnungProblem problem)?
        error,
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        loading,
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        initial,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(abrechnungPeriode, abrechnungSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AbrechnungState value) $default, {
    required TResult Function(AbrechnungProblematic value) error,
    required TResult Function(AbrechnungLoading value) loading,
    required TResult Function(AbrechnungInitial value) initial,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AbrechnungState value)? $default, {
    TResult Function(AbrechnungProblematic value)? error,
    TResult Function(AbrechnungLoading value)? loading,
    TResult Function(AbrechnungInitial value)? initial,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AbrechnungState value)? $default, {
    TResult Function(AbrechnungProblematic value)? error,
    TResult Function(AbrechnungLoading value)? loading,
    TResult Function(AbrechnungInitial value)? initial,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AbrechnungLoading extends AbrechnungState {
  const factory AbrechnungLoading(
      {AbrechnungPeriode abrechnungPeriode,
      AbrechnungSettings abrechnungSettings}) = _$AbrechnungLoading;
  const AbrechnungLoading._() : super._();

  @override
  AbrechnungPeriode get abrechnungPeriode;
  @override
  AbrechnungSettings get abrechnungSettings;
  @override
  @JsonKey(ignore: true)
  $AbrechnungLoadingCopyWith<AbrechnungLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbrechnungInitialCopyWith<$Res>
    implements $AbrechnungStateCopyWith<$Res> {
  factory $AbrechnungInitialCopyWith(
          AbrechnungInitial value, $Res Function(AbrechnungInitial) then) =
      _$AbrechnungInitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {AbrechnungPeriode abrechnungPeriode,
      AbrechnungSettings abrechnungSettings});

  @override
  $AbrechnungPeriodeCopyWith<$Res> get abrechnungPeriode;
  @override
  $AbrechnungSettingsCopyWith<$Res> get abrechnungSettings;
}

/// @nodoc
class _$AbrechnungInitialCopyWithImpl<$Res>
    extends _$AbrechnungStateCopyWithImpl<$Res>
    implements $AbrechnungInitialCopyWith<$Res> {
  _$AbrechnungInitialCopyWithImpl(
      AbrechnungInitial _value, $Res Function(AbrechnungInitial) _then)
      : super(_value, (v) => _then(v as AbrechnungInitial));

  @override
  AbrechnungInitial get _value => super._value as AbrechnungInitial;

  @override
  $Res call({
    Object? abrechnungPeriode = freezed,
    Object? abrechnungSettings = freezed,
  }) {
    return _then(AbrechnungInitial(
      abrechnungPeriode: abrechnungPeriode == freezed
          ? _value.abrechnungPeriode
          : abrechnungPeriode // ignore: cast_nullable_to_non_nullable
              as AbrechnungPeriode,
      abrechnungSettings: abrechnungSettings == freezed
          ? _value.abrechnungSettings
          : abrechnungSettings // ignore: cast_nullable_to_non_nullable
              as AbrechnungSettings,
    ));
  }
}

/// @nodoc

class _$AbrechnungInitial extends AbrechnungInitial
    with DiagnosticableTreeMixin {
  const _$AbrechnungInitial(
      {this.abrechnungPeriode = const AbrechnungPeriode(),
      this.abrechnungSettings = const AbrechnungSettings()})
      : super._();

  @JsonKey()
  @override
  final AbrechnungPeriode abrechnungPeriode;
  @JsonKey()
  @override
  final AbrechnungSettings abrechnungSettings;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbrechnungState.initial(abrechnungPeriode: $abrechnungPeriode, abrechnungSettings: $abrechnungSettings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbrechnungState.initial'))
      ..add(DiagnosticsProperty('abrechnungPeriode', abrechnungPeriode))
      ..add(DiagnosticsProperty('abrechnungSettings', abrechnungSettings));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AbrechnungInitial &&
            const DeepCollectionEquality()
                .equals(other.abrechnungPeriode, abrechnungPeriode) &&
            const DeepCollectionEquality()
                .equals(other.abrechnungSettings, abrechnungSettings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(abrechnungPeriode),
      const DeepCollectionEquality().hash(abrechnungSettings));

  @JsonKey(ignore: true)
  @override
  $AbrechnungInitialCopyWith<AbrechnungInitial> get copyWith =>
      _$AbrechnungInitialCopyWithImpl<AbrechnungInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)
        $default, {
    required TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings, AbrechnungProblem problem)
        error,
    required TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)
        loading,
    required TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)
        initial,
  }) {
    return initial(abrechnungPeriode, abrechnungSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        $default, {
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings, AbrechnungProblem problem)?
        error,
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        loading,
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        initial,
  }) {
    return initial?.call(abrechnungPeriode, abrechnungSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        $default, {
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings, AbrechnungProblem problem)?
        error,
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        loading,
    TResult Function(AbrechnungPeriode abrechnungPeriode,
            AbrechnungSettings abrechnungSettings)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(abrechnungPeriode, abrechnungSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AbrechnungState value) $default, {
    required TResult Function(AbrechnungProblematic value) error,
    required TResult Function(AbrechnungLoading value) loading,
    required TResult Function(AbrechnungInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AbrechnungState value)? $default, {
    TResult Function(AbrechnungProblematic value)? error,
    TResult Function(AbrechnungLoading value)? loading,
    TResult Function(AbrechnungInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AbrechnungState value)? $default, {
    TResult Function(AbrechnungProblematic value)? error,
    TResult Function(AbrechnungLoading value)? loading,
    TResult Function(AbrechnungInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AbrechnungInitial extends AbrechnungState {
  const factory AbrechnungInitial(
      {AbrechnungPeriode abrechnungPeriode,
      AbrechnungSettings abrechnungSettings}) = _$AbrechnungInitial;
  const AbrechnungInitial._() : super._();

  @override
  AbrechnungPeriode get abrechnungPeriode;
  @override
  AbrechnungSettings get abrechnungSettings;
  @override
  @JsonKey(ignore: true)
  $AbrechnungInitialCopyWith<AbrechnungInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
