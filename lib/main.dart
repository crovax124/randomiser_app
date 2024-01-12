import 'package:randomiser_app/project_import/project_import.dart';

void main() async {
  await injectContainer();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.dark.copyWith(
        systemNavigationBarColor: Theme.of(context).canvasColor,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: MaterialApp.router(
        title: 'Patient Randomiser',
        theme: ThemeData.from(
          colorScheme: const ColorScheme.light(
            primary: Color(0xFF1D3557),
            secondary: Color(0xFF457B9D),
            background: Color(0xFFF1FAEE),
            surface: Color(0xFFF1FAEE),
            onPrimary: Color(0xFFF1FAEE),
            onSecondary: Color(0xFFF1FAEE),
            onBackground: Color(0xFF1D3557),
            onSurface: Color(0xFF1D3557),
          ),
        ),
        routerConfig: getIt<AppRouter>().config(),
        builder: (context, child) {
          return Builder(
            builder: (context) {
              return GlobalBlocsProvider(
                child: child ?? const SizedBox.shrink(),
              );
            },
          );
        },
      ),
    );
  }
}
