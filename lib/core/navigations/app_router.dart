import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../presentation/home_page.dart';
import '../../presentation/feature_pages/add_patient.dart';
import '../../presentation/feature_pages/add_group.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter implements AutoRouteGuard {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: HomeRoute.page),
        AutoRoute(
          path: '/add-groups',
          page: AddGroupRoute.page,
        ),
        CustomRoute(
          path: '/add-patient',
          page: AddPatientRoute.page,
          customRouteBuilder: modalSheetBuilder,
        ),
      ];

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    resolver.next();
  }
}

Route<T> modalSheetBuilder<T>(
  BuildContext context,
  Widget child,
  RouteSettings page,
) {
  return ModalBottomSheetRoute(
    settings: page,
    builder: (context) => child,
    clipBehavior: Clip.hardEdge,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(25),
      ),
    ),
    elevation: 0,
    constraints: BoxConstraints(
      maxHeight: MediaQuery.of(context).size.height * 0.9,
    ),
    isScrollControlled: true,
  );
}
