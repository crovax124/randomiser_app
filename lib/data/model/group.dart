import 'package:randomiser_app/project_import/project_import.dart';

part 'group.g.dart';

@JsonSerializable()
@immutable
class Group with EquatableMixin {
  const Group({
    required this.id,
    required this.patients,
    required this.maxPatients,
  })  : assert(id >= 0, 'Group id cannot be negative'),
        assert(maxPatients > 0, 'maxPatients must be positive');

  factory Group.createGroup({
    required int id,
    required int maxPatients,
  }) {
    return Group(
      id: id,
      patients: const [],
      maxPatients: maxPatients,
    );
  }

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
  Map<String, dynamic> toJson() => _$GroupToJson(this);

  final int id;
  final List<Patient> patients;
  final int maxPatients;

  Group addPatient(Patient patient) {
    if (patients.length >= maxPatients) {
      throw Exception(
          'Group has reached its maximum capacity of $maxPatients patients.');
    }
    return Group(
      id: id,
      patients: List<Patient>.from(patients)..add(patient),
      maxPatients: maxPatients,
    );
  }

  int get groupId => id;

  @override
  List<Object?> get props => [id, patients, maxPatients];
}
