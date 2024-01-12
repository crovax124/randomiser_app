import 'package:randomiser_app/project_import/project_import.dart';

part 'patient.g.dart';

@JsonSerializable()
@immutable
class Patient with EquatableMixin {
  const Patient({
    required this.id,
  }) : assert(id >= 0, 'Patient id cannot be negative');
  final int id;
  factory Patient.createPatient(int id) => Patient(id: id);

  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);
  Map<String, dynamic> toJson() => _$PatientToJson(this);
  int get patientId => id;
  @override
  List<Object?> get props => [id];
}
