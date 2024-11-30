import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';
import 'package:handcar_ventor/core/widgets/drawer_widget.dart';
import 'package:handcar_ventor/features/dashboard/view/pages/dashboard_page.dart';
import 'package:handcar_ventor/features/dashboard/view/pages/service_request_page.dart';
import 'package:handcar_ventor/features/dashboard/view/pages/subscriptions_page.dart';
import 'package:handcar_ventor/features/notifications/view/pages/notification_page.dart';
import 'package:handcar_ventor/features/services/view/pages/service_page.dart';

class NavigationPage extends HookWidget {
  static const route = "/navigation";
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController(initialPage: 1);
    final navBarIndex = useState(1);
    final searchController = useTextEditingController();
    final isSearching = useState(false);
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    void onTap(int index) {
      navBarIndex.value = index;
      pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }

    // Create the search bar widget
    Widget buildSearchBar() {
      return TextField(
        controller: searchController,
        style: TextStyle(
          color: isDarkMode ? Colors.white : Colors.black,
        ),
        decoration: InputDecoration(
          hintText: navBarIndex.value == 2
              ? 'Search services...'
              : 'Search subscriptions...',
          hintStyle: TextStyle(
            color: isDarkMode ? Colors.white70 : Colors.black54,
          ),
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: isDarkMode ? Colors.white70 : Colors.black54,
          ),
          suffixIcon: searchController.text.isNotEmpty
              ? IconButton(
                  icon: Icon(
                    Icons.clear,
                    color: isDarkMode ? Colors.white70 : Colors.black54,
                  ),
                  onPressed: () {
                    searchController.clear();
                    // Add your search clear logic here
                  },
                )
              : null,
        ),
        onChanged: (value) {
          // Add your search logic here
        },
      );
    }

    return Scaffold(
      backgroundColor:
          isDarkMode ? context.colors.background : context.colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: (navBarIndex.value == 2 || navBarIndex.value == 3) &&
                isSearching.value
            ? buildSearchBar()
            : Text(
                navBarIndex.value == 0
                    ? 'Service Requests'
                    : navBarIndex.value == 1
                        ? 'Dashboard'
                        : navBarIndex.value == 2
                            ? 'Services'
                            : 'Subscriptions',
                style: context.typography.h3,
              ),
        actions: [
          if (navBarIndex.value == 2 || navBarIndex.value == 3)
            IconButton(
              onPressed: () {
                isSearching.value = !isSearching.value;
                if (!isSearching.value) {
                  searchController.clear();
                  // Add your search clear logic here
                }
              },
              icon: Icon(isSearching.value ? Icons.close : Icons.search),
            )
          else
            const Icon(Icons.search),
          IconButton(
            onPressed: () {
              context.push(NotificationPage.route);
            },
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      drawer: const DrawerWidget(),
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          navBarIndex.value = value;
          isSearching.value = false; // Reset search state when page changes
          searchController.clear(); // Clear search when page changes
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
