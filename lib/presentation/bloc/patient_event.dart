part of 'patient_bloc.dart';

@freezed
class PatientEvent with _$PatientEvent {
  const factory PatientEvent.appLoad() = _AppLoad;
  const factory PatientEvent.addPatient(int patientId, BuildContext context) =
      _AddPatient;
  const factory PatientEvent.defineGroups(
          int numberOfGroups, int maxPatientsPerGroup, BuildContext context) =
      _DefineGroups;
  const factory PatientEvent.reset(BuildContext context) = _Reset;
}
