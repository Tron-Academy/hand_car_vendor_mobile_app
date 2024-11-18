import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';
import 'package:handcar_ventor/features/dashboard/view/widgets/card_home_widget.dart';
import 'package:handcar_ventor/features/dashboard/view/widgets/recent_service_card_widget.dart';
import 'package:handcar_ventor/features/dashboard/view/widgets/upcoming_service.dart';

class VendorDashboard extends HookWidget {
  static const route = '/vendor-dashboard';
  const VendorDashboard({super.key});

  @override

  Widget build(BuildContext context) {
    // Using hooks to manage state
    final upcomingServices = useState([
      {
        'customerName': 'Leo Messi',
        'carModel': 'Maserati',
        'serviceType': 'Oil Change',
        'scheduledTime': DateTime.now().add(const Duration(hours: 2)),
      },
      {
        'customerName': 'Ronaldo',
        'carModel': 'Ferrari',
        'serviceType': 'Brake Inspection',
        'scheduledTime': DateTime.now().add(const Duration(hours: 4)),
      },
    ]);

    final recentServices = useState([
      {
        'customerName': 'Mohammed Salah',
        'carModel': 'Mercedes',
        'serviceType': 'Tire Rotation',
        'amount': 45.00,
        'date': DateTime.now().subtract(const Duration(days: 1)),
      },
      {
        'customerName': 'Neymar',
        'carModel': 'BMW X3',
        'serviceType': 'Full Service',
        'amount': 299.99,
        'date': DateTime.now().subtract(const Duration(days: 2)),
      },
    ]);

    // Animation hook for statistics cards
    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 800),
    );

    final scaleAnimation = useAnimation(
      Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: animationController,
          curve: Curves.easeOutBack,
        ),
      ),
    );

    // Effect hook to start animation
    useEffect(() {
      animationController.forward();
      return null;
    }, []);

    // Callback hooks

    return Scaffold(
      appBar: AppBar(
        title: Text(' Dashboard', style: context.typography.h3),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(context.space.space_200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Transform.scale(
              scale: scaleAnimation,
              child: _buildStatisticsCards(),
            ),
            SizedBox(height: context.space.space_250),
            UpcomingServiceCard(services: upcomingServices.value),
            SizedBox(height: context.space.space_250),
            RecentServiceCard(
              services: recentServices.value,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatisticsCards() {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        CardWidget(
          title: 'Total Services',
          value: '198',
          color: Colors.blue,
          icon: Icons.build,
        ),
        CardWidget(
          title: 'Service Requests',
          value: '40',
          color: Colors.green,
          icon: Icons.group_add_rounded,
        ),
        CardWidget(
          title: 'Total Subscriptions',
          value: '200',
          color: Colors.orange,
          icon: Icons.card_membership,
        ),
        CardWidget(
          title: 'Completion Rate',
          value: '95%',
          color: Colors.purple,
          icon: Icons.check_circle,
        ),
      ],
    );
  }
}
