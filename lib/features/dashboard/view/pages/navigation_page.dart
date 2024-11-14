import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';
import 'package:handcar_ventor/features/dashboard/view/pages/dashboard_page.dart';

import 'package:handcar_ventor/features/dashboard/view/pages/subscriptions_page.dart';
import 'package:handcar_ventor/features/dashboard/view/pages/total_service_page.dart';
import 'package:handcar_ventor/features/services/view/pages/add_service_page.dart';
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
      bottomNavigationBar: CircleNavBar(
        onTap: onTap,
        inactiveLevelsStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: isDarkMode ? Colors.white70 : Colors.black87,
        ),
        activeLevelsStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: isDarkMode ? Colors.white : Colors.black,
        ),
        activeIcons: [
          Icon(
            Icons.sync_alt,
            size: 20,
            color: isDarkMode
                ? context.colors.background
                : context.colors.primaryTxt,
          ),
          Icon(
            Icons.home,
            size: 20,
            color: isDarkMode
                ? context.colors.background
                : context.colors.primaryTxt,
          ),
          Icon(
            Icons.card_membership_outlined,
            size: 20,
            color: isDarkMode
                ? context.colors.background
                : context.colors.primaryTxt,
          ),
        ],
        inactiveIcons: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              "Total Service",
              style: context.typography.bodyMedium.copyWith(
                color: isDarkMode ? Colors.white70 : Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: context.space.space_100),
            child: Text("Home",
                style: context.typography.bodyMedium.copyWith(
                  color: isDarkMode ? Colors.white70 : Colors.white,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text("Subscriptions",
                style: context.typography.bodyMedium.copyWith(
                  color: isDarkMode ? Colors.white70 : Colors.white,
                )),
          ),
        ],
        color: isDarkMode
            ? // Dark background
            const Color(0xFF3B3B3D)
            : const Color(0xFF1E1E1E), // Light background
        circleColor: isDarkMode
            ? Colors.white // Circle color in dark mode
            : Colors.grey, // Circle color in light mode
        height: 60,
        circleWidth: 60,
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        ),
        activeIndex: navBarIndex.value,
        shadowColor: isDarkMode
            ? Colors.black.withOpacity(0.2)
            : Colors.grey.withOpacity(0.2),
        elevation: 8,
      ),
    );
  }
}
