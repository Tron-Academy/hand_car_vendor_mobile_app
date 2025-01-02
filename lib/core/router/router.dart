import 'package:go_router/go_router.dart';
import 'package:handcar_ventor/features/auth/view/pages/login_page.dart';
import 'package:handcar_ventor/features/dashboard/view/pages/dashboard_page.dart';
import 'package:handcar_ventor/features/dashboard/view/pages/navigation_page.dart';
import 'package:handcar_ventor/features/dashboard/view/pages/service_request_page.dart';
import 'package:handcar_ventor/features/subscriptions/view/pages/subscriptions_page.dart';
import 'package:handcar_ventor/features/profile/view/pages/edit_profile_page.dart';
import 'package:handcar_ventor/features/notifications/view/pages/notification_page.dart';
import 'package:handcar_ventor/features/services/view/pages/add_service_page.dart';
import 'package:handcar_ventor/features/services/view/pages/service_page.dart';

final router = GoRouter(
  initialLocation: VendorLoginPage.route,
  routes: [
    //Navigation Route
    GoRoute(path: NavigationPage.route, builder: (context, state) => const NavigationPage()),
    //Dashboard Routeq  
    GoRoute(path: VendorDashboard.route, builder: (context, state) => const VendorDashboard()),
    //Add Service Route
    GoRoute(path: AddServiceScreen.route, builder: (context, state) => const AddServiceScreen()),
    //Service Route
    GoRoute(path: ServicePage.route, builder: (context, state) => const ServicePage()),
    //Edit Profile Route
    GoRoute(path: EditProfilePage.route, builder: (context, state) => const EditProfilePage()),
    //Service Request Route
    GoRoute(path: ServiceRequestPage.route, builder: (context, state) => const ServiceRequestPage()),
    //Subscriptions Route
    GoRoute(path: SubscriptionPage.route, builder: (context, state) => const SubscriptionPage()),
    //Notification Route
    GoRoute(path: NotificationPage.route, builder: (context, state) => const NotificationPage()),
    //Login With Email And Password Route
    GoRoute(path: VendorLoginPage.route, builder: (context, state) => const VendorLoginPage()),
  

  ],
);

