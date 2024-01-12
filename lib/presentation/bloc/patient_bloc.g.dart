// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientStateImpl _$$PatientStateImplFromJson(Map<String, dynamic> json) =>
    _$PatientStateImpl(
      blocStatus:
          $enumDecodeNullable(_$BlocStatusEnumMap, json['blocStatus']) ??
              BlocStatus.initial,
      patients: (json['patients'] as List<dynamic>?)
              ?.map((e) => Patient.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      groups: (json['groups'] as List<dynamic>?)
              ?.map((e) => Group.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PatientStateImplToJson(_$PatientStateImpl instance) =>
    <String, dynamic>{
      'blocStatus': _$BlocStatusEnumMap[instance.blocStatus]!,
      'patients': instance.patients,
      'groups': instance.groups,
    };

const _$BlocStatusEnumMap = {
  BlocStatus.initial: 'initial',
  BlocStatus.groupsNotEmpty: 'groupsNotEmpty',
  BlocStatus.noGroupsDefined: 'noGroupsDefined',
  BlocStatus.userAlreadyExists: 'userAlreadyExists',
  BlocStatus.patientIdInUse: 'patientIdInUse',
  BlocStatus.error: 'error',
};
