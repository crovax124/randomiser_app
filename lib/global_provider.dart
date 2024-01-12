import 'package:randomiser_app/project_import/project_import.dart';

class GlobalBlocsProvider extends StatelessWidget {
  const GlobalBlocsProvider({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PatientBloc>(
          create: (context) => getIt()..add(const PatientEvent.appLoad()),
        ),
      ],
      child: child,
    );
  }
}
