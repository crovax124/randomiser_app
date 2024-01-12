import 'package:randomiser_app/project_import/project_import.dart';

part 'patient_bloc.freezed.dart';
part 'patient_bloc.g.dart';
part 'patient_event.dart';
part 'patient_state.dart';

class PatientBloc extends HydratedBloc<PatientEvent, PatientState> {
  PatientBloc() : super(const _PatientState()) {
    on<_AppLoad>(_appLoad);
    on<_AddPatient>(_addPatient);
    on<_DefineGroups>(_defineGroups);
    on<_Reset>(_reset);
  }
  @override
  String get storagePrefix => 'PatientBloc';

  @override
  PatientState fromJson(Map<String, dynamic> json) =>
      PatientState.fromJson(json);

  @override
  Map<String, dynamic> toJson(PatientState state) => state.toJson();

  FutureOr<void> _appLoad(
    _AppLoad event,
    Emitter<PatientState> emit,
  ) {
    if (state.groups.isEmpty) {
      emit(state.copyWith(
          blocStatus: BlocStatus.initial,
          groups: [], // Ensuring groups are empty.
          patients: []
          // Optionally reset patients as well, depending on your app logic.
          ));
    } else {
      emit(state.copyWith(
        blocStatus: BlocStatus.groupsNotEmpty,
      ));
    }
  }

// This event should be called when the user searches for a patient by id.
  FutureOr<void> _defineGroups(
    _DefineGroups event,
    Emitter<PatientState> emit,
  ) {
    if (state.groups.isNotEmpty) {
      emit(state.copyWith(blocStatus: BlocStatus.groupsNotEmpty));
      ScaffoldMessenger.of(event.context).showSnackBar(const SnackBar(
          content:
              Text('Groups already defined. Reset to define new groups.')));
    } else {
      List<Group> groups = [];
      for (int i = 0; i < event.numberOfGroups; i++) {
        // Create each group with an ID and the specified maximum capacity
        groups.add(
            Group.createGroup(id: i, maxPatients: event.maxPatientsPerGroup));
      }
      emit(state.copyWith(groups: groups));
      ScaffoldMessenger.of(event.context).showSnackBar(SnackBar(
          content: Text(
              '${event.numberOfGroups} Groups defined. Each group can have a maximum of ${event.maxPatientsPerGroup} patients.')));
    }
  }

  FutureOr<void> _addPatient(
    _AddPatient event,
    Emitter<PatientState> emit,
  ) {
    var groups = List<Group>.from(state.groups);
    bool isPatientIdInUse = groups.any((group) =>
        group.patients.any((patient) => patient.id == event.patientId));

    if (isPatientIdInUse) {
      emit(state.copyWith(blocStatus: BlocStatus.patientIdInUse));
      ScaffoldMessenger.of(event.context).showSnackBar(
          SnackBar(content: Text('Patient ID ${event.patientId} is in use.')));
    } else {
      if (groups.isEmpty) {
        // Handle case when there are no groups
        emit(state.copyWith(blocStatus: BlocStatus.noGroupsDefined));
        ScaffoldMessenger.of(event.context)
            .showSnackBar(const SnackBar(content: Text('No groups defined.')));
      } else {
        var random = Random();
        bool patientAdded = false;
        List<int> triedIndices = [];

        while (!patientAdded && triedIndices.length < groups.length) {
          int groupIndex = random.nextInt(groups.length);

          // Check if this group has already been tried
          if (triedIndices.contains(groupIndex)) continue;
          triedIndices.add(groupIndex);

          var group = groups[groupIndex];
          if (group.patients.length < group.maxPatients) {
            var updatedGroup =
                group.addPatient(Patient.createPatient(event.patientId));
            groups[groupIndex] = updatedGroup;
            patientAdded = true;
          }
          if (patientAdded) {
            emit(state.copyWith(groups: groups));
            ScaffoldMessenger.of(event.context).showSnackBar(SnackBar(
                content: Text(
                    'Patient ${event.patientId} added to group ${groupIndex + 1}.')));
          } else {
            emit(state.copyWith(blocStatus: BlocStatus.error));
          }
        }
      }
    }
  }

  FutureOr<void> _reset(
    _Reset event,
    Emitter<PatientState> emit,
  ) {
    emit(state.copyWith(
        blocStatus: BlocStatus.initial,
        groups: [], // Ensuring groups are empty.
        patients: [] // Optionally reset patients as well, depending on your app logic.
        ));
    ScaffoldMessenger.of(event.context)
        .showSnackBar(const SnackBar(content: Text('Groups reset.')));
  }

  int? groupIdFromPatient(Patient patientId) =>
      state.getGroupIdFromPatient(patientId);
}
