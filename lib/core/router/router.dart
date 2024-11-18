import 'package:go_router/go_router.dart';
import 'package:handcar_ventor/features/dashboard/view/pages/dashboard_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: VendorDashboard.route, builder: (context, state) => const VendorDashboard()),
  ],
);
