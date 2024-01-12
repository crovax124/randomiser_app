part of 'patient_bloc.dart';

@freezed
class PatientState with _$PatientState {
  const PatientState._();

  const factory PatientState({
    @Default(BlocStatus.initial) BlocStatus blocStatus,
    @Default([]) List<Patient> patients,
    @Default([]) List<Group> groups,
  }) = _PatientState;

  factory PatientState.fromJson(Map<String, dynamic> json) =>
      _$PatientStateFromJson(json);
}

extension PatientStateX on PatientState {
  int? getGroupIdFromPatient(Patient patientId) {
    return groups
        .firstWhereOrNull((element) => element.patients.contains(patientId))
        ?.groupId;
  }

  // get amount of Groups
  int getGroupAmount() {
    return groups.length;
  }
}
