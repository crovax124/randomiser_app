import 'package:randomiser_app/project_import/project_import.dart';

@RoutePage()
class AddGroupPage extends StatelessWidget {
  const AddGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final form = FormGroup({
      'Amount of Groups': FormControl<int>(
          value: context.read<PatientBloc>().state.groups.length),
      'Maximum Patients per Group': FormControl<int>(
          value: context.read<PatientBloc>().state.groups.isNotEmpty
              ? context.read<PatientBloc>().state.groups.first.maxPatients
              : 0),
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: "Add Group".text.make(),
        actions: [
          TextButton(
            onPressed: () {
              context.read<PatientBloc>().add(PatientEvent.reset(context));
            },
            style: TextButton.styleFrom(
              side: BorderSide(
                  color: Theme.of(context).colorScheme.primary, width: 0.5),
            ),
            child: "Reset Groups".text.make(),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Card(
              child: SizedBox(
                width: 300,
                child: BlocBuilder<PatientBloc, PatientState>(
                    builder: (context, state) {
                  if (state.groups.isEmpty) {
                    return const Text("No groups available");
                  }
                  return Column(
                    children: [
                      Row(
                        children: [
                          "Amount of Groups: ".text.make(),
                          state.groups.length.text.make()
                        ],
                      ),
                      Row(
                        children: [
                          "Maximum Patients per Group: ".text.make(),
                          context.read<PatientBloc>().state.groups.isNotEmpty
                              ? context
                                  .read<PatientBloc>()
                                  .state
                                  .groups
                                  .first
                                  .maxPatients
                                  .text
                                  .make()
                              : 0.text.make()
                        ],
                      ),
                    ],
                  );
                }),
              ).p(20),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Card(
            child: SizedBox(
              width: 300,
              child: ReactiveFormBuilder(
                form: () => form,
                builder: (context, form, child) {
                  return Column(
                    children: [
                      ReactiveTextField<int>(
                        formControlName: 'Amount of Groups',
                        validationMessages: {
                          ValidationMessage.required: (_) =>
                              'The amount of groups is required',
                        },
                        decoration: const InputDecoration(
                          labelText: 'Amount of Groups',
                        ),
                      ),
                      ReactiveTextField(
                        formControlName: 'Maximum Patients per Group',
                        validationMessages: {
                          ValidationMessage.required: (_) =>
                              'The maximum patients per group is required',
                        },
                        decoration: const InputDecoration(
                          labelText: 'Maximum Patients per Group',
                        ),
                      ),
                      ReactiveFormConsumer(
                        builder: (context, form, child) {
                          return FloatingActionButton(
                            heroTag: "addGroup",
                            onPressed: () {
                              if (form.valid) {
                                context.read<PatientBloc>().add(
                                    PatientEvent.defineGroups(
                                        form.control('Amount of Groups').value,
                                        form
                                            .control(
                                                'Maximum Patients per Group')
                                            .value,
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
              ),
            ).p(20),
          ),
        ],
      ),
    );
  }
}
