import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';
import 'package:handcar_ventor/features/dashboard/view/pages/dashboard_page.dart';

import 'package:handcar_ventor/features/dashboard/view/pages/subscriptions_page.dart';
import 'package:handcar_ventor/features/dashboard/view/pages/total_service_page.dart';
import 'package:handcar_ventor/features/services/view/pages/service_page.dart';

class NavigationPage extends HookWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController(initialPage: 1);
    final navBarIndex = useState(1);
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

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
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          navBarIndex.value = value;
        },
        children: const [
          TotalServicePage(),
          DashboardPage(),
          ServicePage(),
          SubscriptionsPage(),
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
          unselectedLabelStyle: context.typography.bodyMedium.copyWith(
            color: isDarkMode ? Colors.white70 : Colors.white70,
          ),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.sync_alt, size: 20),
              label: "Total Service",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 20),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.supervisor_account_outlined, size: 20),
              label: "Services Requests",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, size: 20),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
