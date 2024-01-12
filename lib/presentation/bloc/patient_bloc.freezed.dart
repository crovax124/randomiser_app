// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PatientEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLoad,
    required TResult Function(int patientId, BuildContext context) addPatient,
    required TResult Function(
            int numberOfGroups, int maxPatientsPerGroup, BuildContext context)
        defineGroups,
    required TResult Function(BuildContext context) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLoad,
    TResult? Function(int patientId, BuildContext context)? addPatient,
    TResult? Function(
            int numberOfGroups, int maxPatientsPerGroup, BuildContext context)?
        defineGroups,
    TResult? Function(BuildContext context)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLoad,
    TResult Function(int patientId, BuildContext context)? addPatient,
    TResult Function(
            int numberOfGroups, int maxPatientsPerGroup, BuildContext context)?
        defineGroups,
    TResult Function(BuildContext context)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppLoad value) appLoad,
    required TResult Function(_AddPatient value) addPatient,
    required TResult Function(_DefineGroups value) defineGroups,
    required TResult Function(_Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppLoad value)? appLoad,
    TResult? Function(_AddPatient value)? addPatient,
    TResult? Function(_DefineGroups value)? defineGroups,
    TResult? Function(_Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppLoad value)? appLoad,
    TResult Function(_AddPatient value)? addPatient,
    TResult Function(_DefineGroups value)? defineGroups,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientEventCopyWith<$Res> {
  factory $PatientEventCopyWith(
          PatientEvent value, $Res Function(PatientEvent) then) =
      _$PatientEventCopyWithImpl<$Res, PatientEvent>;
}

/// @nodoc
class _$PatientEventCopyWithImpl<$Res, $Val extends PatientEvent>
    implements $PatientEventCopyWith<$Res> {
  _$PatientEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppLoadImplCopyWith<$Res> {
  factory _$$AppLoadImplCopyWith(
          _$AppLoadImpl value, $Res Function(_$AppLoadImpl) then) =
      __$$AppLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppLoadImplCopyWithImpl<$Res>
    extends _$PatientEventCopyWithImpl<$Res, _$AppLoadImpl>
    implements _$$AppLoadImplCopyWith<$Res> {
  __$$AppLoadImplCopyWithImpl(
      _$AppLoadImpl _value, $Res Function(_$AppLoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppLoadImpl implements _AppLoad {
  const _$AppLoadImpl();

  @override
  String toString() {
    return 'PatientEvent.appLoad()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLoad,
    required TResult Function(int patientId, BuildContext context) addPatient,
    required TResult Function(
            int numberOfGroups, int maxPatientsPerGroup, BuildContext context)
        defineGroups,
    required TResult Function(BuildContext context) reset,
  }) {
    return appLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLoad,
    TResult? Function(int patientId, BuildContext context)? addPatient,
    TResult? Function(
            int numberOfGroups, int maxPatientsPerGroup, BuildContext context)?
        defineGroups,
    TResult? Function(BuildContext context)? reset,
  }) {
    return appLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLoad,
    TResult Function(int patientId, BuildContext context)? addPatient,
    TResult Function(
            int numberOfGroups, int maxPatientsPerGroup, BuildContext context)?
        defineGroups,
    TResult Function(BuildContext context)? reset,
    required TResult orElse(),
  }) {
    if (appLoad != null) {
      return appLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppLoad value) appLoad,
    required TResult Function(_AddPatient value) addPatient,
    required TResult Function(_DefineGroups value) defineGroups,
    required TResult Function(_Reset value) reset,
  }) {
    return appLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppLoad value)? appLoad,
    TResult? Function(_AddPatient value)? addPatient,
    TResult? Function(_DefineGroups value)? defineGroups,
    TResult? Function(_Reset value)? reset,
  }) {
    return appLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppLoad value)? appLoad,
    TResult Function(_AddPatient value)? addPatient,
    TResult Function(_DefineGroups value)? defineGroups,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (appLoad != null) {
      return appLoad(this);
    }
    return orElse();
  }
}

abstract class _AppLoad implements PatientEvent {
  const factory _AppLoad() = _$AppLoadImpl;
}

/// @nodoc
abstract class _$$AddPatientImplCopyWith<$Res> {
  factory _$$AddPatientImplCopyWith(
          _$AddPatientImpl value, $Res Function(_$AddPatientImpl) then) =
      __$$AddPatientImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int patientId, BuildContext context});
}

/// @nodoc
class __$$AddPatientImplCopyWithImpl<$Res>
    extends _$PatientEventCopyWithImpl<$Res, _$AddPatientImpl>
    implements _$$AddPatientImplCopyWith<$Res> {
  __$$AddPatientImplCopyWithImpl(
      _$AddPatientImpl _value, $Res Function(_$AddPatientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = null,
    Object? context = null,
  }) {
    return _then(_$AddPatientImpl(
      null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$AddPatientImpl implements _AddPatient {
  const _$AddPatientImpl(this.patientId, this.context);

  @override
  final int patientId;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'PatientEvent.addPatient(patientId: $patientId, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPatientImpl &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, patientId, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPatientImplCopyWith<_$AddPatientImpl> get copyWith =>
      __$$AddPatientImplCopyWithImpl<_$AddPatientImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLoad,
    required TResult Function(int patientId, BuildContext context) addPatient,
    required TResult Function(
            int numberOfGroups, int maxPatientsPerGroup, BuildContext context)
        defineGroups,
    required TResult Function(BuildContext context) reset,
  }) {
    return addPatient(patientId, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLoad,
    TResult? Function(int patientId, BuildContext context)? addPatient,
    TResult? Function(
            int numberOfGroups, int maxPatientsPerGroup, BuildContext context)?
        defineGroups,
    TResult? Function(BuildContext context)? reset,
  }) {
    return addPatient?.call(patientId, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLoad,
    TResult Function(int patientId, BuildContext context)? addPatient,
    TResult Function(
            int numberOfGroups, int maxPatientsPerGroup, BuildContext context)?
        defineGroups,
    TResult Function(BuildContext context)? reset,
    required TResult orElse(),
  }) {
    if (addPatient != null) {
      return addPatient(patientId, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppLoad value) appLoad,
    required TResult Function(_AddPatient value) addPatient,
    required TResult Function(_DefineGroups value) defineGroups,
    required TResult Function(_Reset value) reset,
  }) {
    return addPatient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppLoad value)? appLoad,
    TResult? Function(_AddPatient value)? addPatient,
    TResult? Function(_DefineGroups value)? defineGroups,
    TResult? Function(_Reset value)? reset,
  }) {
    return addPatient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppLoad value)? appLoad,
    TResult Function(_AddPatient value)? addPatient,
    TResult Function(_DefineGroups value)? defineGroups,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (addPatient != null) {
      return addPatient(this);
    }
    return orElse();
  }
}

abstract class _AddPatient implements PatientEvent {
  const factory _AddPatient(final int patientId, final BuildContext context) =
      _$AddPatientImpl;

  int get patientId;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$AddPatientImplCopyWith<_$AddPatientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DefineGroupsImplCopyWith<$Res> {
  factory _$$DefineGroupsImplCopyWith(
          _$DefineGroupsImpl value, $Res Function(_$DefineGroupsImpl) then) =
      __$$DefineGroupsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int numberOfGroups, int maxPatientsPerGroup, BuildContext context});
}

/// @nodoc
class __$$DefineGroupsImplCopyWithImpl<$Res>
    extends _$PatientEventCopyWithImpl<$Res, _$DefineGroupsImpl>
    implements _$$DefineGroupsImplCopyWith<$Res> {
  __$$DefineGroupsImplCopyWithImpl(
      _$DefineGroupsImpl _value, $Res Function(_$DefineGroupsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOfGroups = null,
    Object? maxPatientsPerGroup = null,
    Object? context = null,
  }) {
    return _then(_$DefineGroupsImpl(
      null == numberOfGroups
          ? _value.numberOfGroups
          : numberOfGroups // ignore: cast_nullable_to_non_nullable
              as int,
      null == maxPatientsPerGroup
          ? _value.maxPatientsPerGroup
          : maxPatientsPerGroup // ignore: cast_nullable_to_non_nullable
              as int,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$DefineGroupsImpl implements _DefineGroups {
  const _$DefineGroupsImpl(
      this.numberOfGroups, this.maxPatientsPerGroup, this.context);

  @override
  final int numberOfGroups;
  @override
  final int maxPatientsPerGroup;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'PatientEvent.defineGroups(numberOfGroups: $numberOfGroups, maxPatientsPerGroup: $maxPatientsPerGroup, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefineGroupsImpl &&
            (identical(other.numberOfGroups, numberOfGroups) ||
                other.numberOfGroups == numberOfGroups) &&
            (identical(other.maxPatientsPerGroup, maxPatientsPerGroup) ||
                other.maxPatientsPerGroup == maxPatientsPerGroup) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, numberOfGroups, maxPatientsPerGroup, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefineGroupsImplCopyWith<_$DefineGroupsImpl> get copyWith =>
      __$$DefineGroupsImplCopyWithImpl<_$DefineGroupsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLoad,
    required TResult Function(int patientId, BuildContext context) addPatient,
    required TResult Function(
            int numberOfGroups, int maxPatientsPerGroup, BuildContext context)
        defineGroups,
    required TResult Function(BuildContext context) reset,
  }) {
    return defineGroups(numberOfGroups, maxPatientsPerGroup, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLoad,
    TResult? Function(int patientId, BuildContext context)? addPatient,
    TResult? Function(
            int numberOfGroups, int maxPatientsPerGroup, BuildContext context)?
        defineGroups,
    TResult? Function(BuildContext context)? reset,
  }) {
    return defineGroups?.call(numberOfGroups, maxPatientsPerGroup, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLoad,
    TResult Function(int patientId, BuildContext context)? addPatient,
    TResult Function(
            int numberOfGroups, int maxPatientsPerGroup, BuildContext context)?
        defineGroups,
    TResult Function(BuildContext context)? reset,
    required TResult orElse(),
  }) {
    if (defineGroups != null) {
      return defineGroups(numberOfGroups, maxPatientsPerGroup, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppLoad value) appLoad,
    required TResult Function(_AddPatient value) addPatient,
    required TResult Function(_DefineGroups value) defineGroups,
    required TResult Function(_Reset value) reset,
  }) {
    return defineGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppLoad value)? appLoad,
    TResult? Function(_AddPatient value)? addPatient,
    TResult? Function(_DefineGroups value)? defineGroups,
    TResult? Function(_Reset value)? reset,
  }) {
    return defineGroups?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppLoad value)? appLoad,
    TResult Function(_AddPatient value)? addPatient,
    TResult Function(_DefineGroups value)? defineGroups,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (defineGroups != null) {
      return defineGroups(this);
    }
    return orElse();
  }
}

abstract class _DefineGroups implements PatientEvent {
  const factory _DefineGroups(
      final int numberOfGroups,
      final int maxPatientsPerGroup,
      final BuildContext context) = _$DefineGroupsImpl;

  int get numberOfGroups;
  int get maxPatientsPerGroup;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$DefineGroupsImplCopyWith<_$DefineGroupsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetImplCopyWith<$Res> {
  factory _$$ResetImplCopyWith(
          _$ResetImpl value, $Res Function(_$ResetImpl) then) =
      __$$ResetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$ResetImplCopyWithImpl<$Res>
    extends _$PatientEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$ResetImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$ResetImpl implements _Reset {
  const _$ResetImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'PatientEvent.reset(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetImplCopyWith<_$ResetImpl> get copyWith =>
      __$$ResetImplCopyWithImpl<_$ResetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLoad,
    required TResult Function(int patientId, BuildContext context) addPatient,
    required TResult Function(
            int numberOfGroups, int maxPatientsPerGroup, BuildContext context)
        defineGroups,
    required TResult Function(BuildContext context) reset,
  }) {
    return reset(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLoad,
    TResult? Function(int patientId, BuildContext context)? addPatient,
    TResult? Function(
            int numberOfGroups, int maxPatientsPerGroup, BuildContext context)?
        defineGroups,
    TResult? Function(BuildContext context)? reset,
  }) {
    return reset?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLoad,
    TResult Function(int patientId, BuildContext context)? addPatient,
    TResult Function(
            int numberOfGroups, int maxPatientsPerGroup, BuildContext context)?
        defineGroups,
    TResult Function(BuildContext context)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppLoad value) appLoad,
    required TResult Function(_AddPatient value) addPatient,
    required TResult Function(_DefineGroups value) defineGroups,
    required TResult Function(_Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppLoad value)? appLoad,
    TResult? Function(_AddPatient value)? addPatient,
    TResult? Function(_DefineGroups value)? defineGroups,
    TResult? Function(_Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppLoad value)? appLoad,
    TResult Function(_AddPatient value)? addPatient,
    TResult Function(_DefineGroups value)? defineGroups,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements PatientEvent {
  const factory _Reset(final BuildContext context) = _$ResetImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$ResetImplCopyWith<_$ResetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PatientState _$PatientStateFromJson(Map<String, dynamic> json) {
  return _PatientState.fromJson(json);
}

/// @nodoc
mixin _$PatientState {
  BlocStatus get blocStatus => throw _privateConstructorUsedError;
  List<Patient> get patients => throw _privateConstructorUsedError;
  List<Group> get groups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientStateCopyWith<PatientState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientStateCopyWith<$Res> {
  factory $PatientStateCopyWith(
          PatientState value, $Res Function(PatientState) then) =
      _$PatientStateCopyWithImpl<$Res, PatientState>;
  @useResult
  $Res call(
      {BlocStatus blocStatus, List<Patient> patients, List<Group> groups});
}

/// @nodoc
class _$PatientStateCopyWithImpl<$Res, $Val extends PatientState>
    implements $PatientStateCopyWith<$Res> {
  _$PatientStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blocStatus = null,
    Object? patients = null,
    Object? groups = null,
  }) {
    return _then(_value.copyWith(
      blocStatus: null == blocStatus
          ? _value.blocStatus
          : blocStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      patients: null == patients
          ? _value.patients
          : patients // ignore: cast_nullable_to_non_nullable
              as List<Patient>,
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientStateImplCopyWith<$Res>
    implements $PatientStateCopyWith<$Res> {
  factory _$$PatientStateImplCopyWith(
          _$PatientStateImpl value, $Res Function(_$PatientStateImpl) then) =
      __$$PatientStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus blocStatus, List<Patient> patients, List<Group> groups});
}

/// @nodoc
class __$$PatientStateImplCopyWithImpl<$Res>
    extends _$PatientStateCopyWithImpl<$Res, _$PatientStateImpl>
    implements _$$PatientStateImplCopyWith<$Res> {
  __$$PatientStateImplCopyWithImpl(
      _$PatientStateImpl _value, $Res Function(_$PatientStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blocStatus = null,
    Object? patients = null,
    Object? groups = null,
  }) {
    return _then(_$PatientStateImpl(
      blocStatus: null == blocStatus
          ? _value.blocStatus
          : blocStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      patients: null == patients
          ? _value._patients
          : patients // ignore: cast_nullable_to_non_nullable
              as List<Patient>,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientStateImpl extends _PatientState {
  const _$PatientStateImpl(
      {this.blocStatus = BlocStatus.initial,
      final List<Patient> patients = const [],
      final List<Group> groups = const []})
      : _patients = patients,
        _groups = groups,
        super._();

  factory _$PatientStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientStateImplFromJson(json);

  @override
  @JsonKey()
  final BlocStatus blocStatus;
  final List<Patient> _patients;
  @override
  @JsonKey()
  List<Patient> get patients {
    if (_patients is EqualUnmodifiableListView) return _patients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_patients);
  }

  final List<Group> _groups;
  @override
  @JsonKey()
  List<Group> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'PatientState(blocStatus: $blocStatus, patients: $patients, groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientStateImpl &&
            (identical(other.blocStatus, blocStatus) ||
                other.blocStatus == blocStatus) &&
            const DeepCollectionEquality().equals(other._patients, _patients) &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      blocStatus,
      const DeepCollectionEquality().hash(_patients),
      const DeepCollectionEquality().hash(_groups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientStateImplCopyWith<_$PatientStateImpl> get copyWith =>
      __$$PatientStateImplCopyWithImpl<_$PatientStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientStateImplToJson(
      this,
    );
  }
}

abstract class _PatientState extends PatientState {
  const factory _PatientState(
      {final BlocStatus blocStatus,
      final List<Patient> patients,
      final List<Group> groups}) = _$PatientStateImpl;
  const _PatientState._() : super._();

  factory _PatientState.fromJson(Map<String, dynamic> json) =
      _$PatientStateImpl.fromJson;

  @override
  BlocStatus get blocStatus;
  @override
  List<Patient> get patients;
  @override
  List<Group> get groups;
  @override
  @JsonKey(ignore: true)
  _$$PatientStateImplCopyWith<_$PatientStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
