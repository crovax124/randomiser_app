import 'package:randomiser_app/project_import/project_import.dart';

class AppPullDownRefresh extends StatelessWidget {
  const AppPullDownRefresh({
    required this.child,
    required this.onRefresh,
    super.key,
    this.enable = true,
  });

  final Widget child;
  final Future<void> Function() onRefresh;
  final bool enable;

  @override
  Widget build(BuildContext context) {
    if (!enable) {
      return child;
    }

    return RefreshIndicator.adaptive(
      onRefresh: onRefresh,
      child: child,
    );
  }
}
