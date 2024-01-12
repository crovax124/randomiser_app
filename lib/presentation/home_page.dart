import 'package:randomiser_app/project_import/project_import.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: "Patient Randomiser".text.make(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 5,
          ),
          FloatingActionButton(
                  heroTag: "Groups",
                  child: "Groups".text.size(20).make(),
                  onPressed: () => context.pushRoute(const AddGroupRoute()))
              .w(300)
              .centered(),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
                  heroTag: "Patients",
                  child: "Patients".text.size(20).make(),
                  onPressed: () => context.pushRoute(const AddPatientRoute()))
              .w(300),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              BlocBuilder<PatientBloc, PatientState>(builder: (context, state) {
                if (state.groups.isEmpty) {
                  return const Text("No groups available");
                }
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                ).px(20).py(5);
              }),
            ],
          ),
          BlocBuilder<PatientBloc, PatientState>(builder: (context, state) {
            if (state.groups.isEmpty) {
              return const Text("No groups available");
            }
            return Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Adjust the number of columns here
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: state.groups.length,
                itemBuilder: (context, i) {
                  return Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(8),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Group ${i + 1}".text.bold.makeCentered(),
                          const SizedBox(height: 30),
                          Column(
                            children: [
                              "Patients in Group:".text.makeCentered(),
                              state.groups[i].patients.length.text
                                  .makeCentered(),
                              const SizedBox(height: 8),
                              if (state.groups[i].patients.isNotEmpty)
                                Column(
                                  children: [
                                    "Patients in this Group:"
                                        .text
                                        .makeCentered(),
                                    state.groups[i].patients
                                        .map((patient) => patient.id)
                                        .join(', ')
                                        .text
                                        .make(),
                                  ],
                                )
                              else
                                const Text("No patients in this group"),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          })
        ],
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
