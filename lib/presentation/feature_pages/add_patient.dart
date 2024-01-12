import 'package:randomiser_app/project_import/project_import.dart';

@RoutePage()
class AddPatientPage extends StatefulWidget {
  const AddPatientPage({super.key});

  @override
  State<AddPatientPage> createState() => _AddPatientPageState();
}

class _AddPatientPageState extends State<AddPatientPage> {
  int? groupId;
  @override
  Widget build(BuildContext context) {
    final form = FormGroup({
      'Patient': FormControl<int>(),
      'SearchPatientsGroup': FormControl<int>(),
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: "Patient Page".text.make(),
      ),
      body: Column(
        children: [
          ReactiveFormBuilder(
            form: () => form,
            builder: (context, form, child) {
              return Card(
                elevation: 5,
                child: Container(
                  width: 300,
                  child: Column(
                    children: [
                      "Search Patient in Groups".text.xl2.makeCentered(),
                      ReactiveTextField<int>(
                        formControlName: 'SearchPatientsGroup',
                        validationMessages: {
                          ValidationMessage.required: (_) =>
                              'a Unique Patient Number is required',
                        },
                        decoration: const InputDecoration(
                          labelText: 'Patient to Look For',
                        ),
                      ).w(250),
                      ReactiveFormConsumer(
                        builder: (context, form, child) {
                          return FloatingActionButton(
                            heroTag: "LookupPatient",
                            onPressed: () {
                              if (form.valid) {
                                setState(() {
                                  groupId = context
                                      .read<PatientBloc>()
                                      .state
                                      .getGroupIdFromPatient(Patient(
                                          id: form
                                              .control('SearchPatientsGroup')
                                              .value));
                                  if (groupId != null) {
                                    groupId = groupId! + 1;
                                  }
                                });
                              } else {
                                form.markAllAsTouched();
                              }
                            },
                            tooltip: 'Find Group',
                            child: const Icon(Icons.search),
                          );
                        },
                      ).py(20),
                      groupId == null
                          ? "Patient not Found".text.make()
                          : "Patient is in Group: $groupId".text.makeCentered(),
                    ],
                  ),
                ).py(20),
              ).py(20);
            },
          ),
          Card(
                  elevation: 5,
                  child: Container(
                    width: 300,
                    child: ReactiveFormBuilder(
                      form: () => form,
                      builder: (context, form, child) {
                        return Column(
                          children: [
                            "Add Patient".text.xl2.makeCentered(),
                            ReactiveTextField<int>(
                              formControlName: 'Patient',
                              validationMessages: {
                                ValidationMessage.required: (_) =>
                                    'a Unique Patient Number is required',
                              },
                              decoration: const InputDecoration(
                                labelText: 'Patient Number',
                              ),
                            ).w(250),
                            ReactiveFormConsumer(
                              builder: (context, form, child) {
                                return FloatingActionButton(
                                  heroTag: "addPatient",
                                  onPressed: () {
                                    if (form.valid) {
                                      context.read<PatientBloc>().add(
                                          PatientEvent.addPatient(
                                              form.control('Patient').value,
                                              context));
                                      context.router.pop(context);
                                    } else {
                                      form.markAllAsTouched();
                                    }
                                  },
                                  tooltip: 'Create Groups',
                                  child: const Icon(Icons.add),
                                );
                              },
                            ).py(20),
                          ],
                        );
                      },
                    ).w(250),
                  ).py(20))
              .centered(),
        ],
      ),
    );
  }
}
