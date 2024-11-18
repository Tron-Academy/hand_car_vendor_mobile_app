import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';
import 'package:handcar_ventor/features/dashboard/view/pages/dashboard_page.dart';

import 'package:handcar_ventor/features/dashboard/view/pages/service_request_page.dart';
import 'package:handcar_ventor/features/dashboard/view/pages/subscriptions_page.dart';
import 'package:handcar_ventor/core/widgets/drawer_widget.dart';
import 'package:handcar_ventor/features/services/view/pages/service_page.dart';

class NavigationPage extends HookWidget {
  static const route = "/navigation";
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    //Page Controller
    final pageController = usePageController(initialPage: 1);

    //NavBar Index
    final navBarIndex = useState(1);

    //Dark Mode
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    //On Tap Function for NavBar
    void onTap(int index) {
      navBarIndex.value = index;
      pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }

    return Scaffold(
      backgroundColor:
          isDarkMode ? context.colors.background : context.colors.white,
      //Drawer Widget
      drawer: const DrawerWidget(),
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          navBarIndex.value = value;
        },
        children: const [
          ServiceRequestPage(),
          VendorDashboard(),
          ServicePage(),
          SubscriptionPage(),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(context.space.space_200),
          topRight: Radius.circular(context.space.space_200),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: navBarIndex.value,
          onTap: onTap,
          backgroundColor:
              isDarkMode ? const Color(0xFF3B3B3D) : const Color(0xFF1E1E1E),
          selectedItemColor: isDarkMode ? Colors.white : Colors.white,
          unselectedItemColor: isDarkMode ? Colors.white70 : Colors.white70,
          selectedLabelStyle: context.typography.bodyMedium.copyWith(
            fontWeight: FontWeight.w600,
            color: isDarkMode ? Colors.white : Colors.white,
          ),
          unselectedLabelStyle: context.typography.body.copyWith(
            color: isDarkMode ? Colors.white70 : Colors.white70,
          ),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.sync_alt, size: 20),
              label: "Service Requests",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 20),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.supervisor_account_outlined, size: 20),
              label: "Services ",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_membership, size: 20),
              label: "Subscriptions",
            ),
          ],
        ),
      ),
    );
  }
}
