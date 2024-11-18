import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';

class SubscriptionPage extends HookWidget {
  static const route = "/subscriptions";
  const SubscriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final subscriptions = useState([
      {
        'userName': 'Leonardo DiCaprio',
        'type': 'Maintenance',
        'servicePlan': 'Luxury',
        'duration': '12months',
        'startDate': '00/00/0000',
        'endDate': '00/00/0000',
        'status': 'Active',
      },
      {
        'userName': 'Cillian Murphy',
        'type': 'Maintenance',
        'servicePlan': 'Premium',
        'duration': '6 months',
        'startDate': '00/00/0000',
        'endDate': '00/00/0000',
        'status': 'Inactive',
      },
      {
        'userName': 'Tom Hardy',
        'type': 'Car wash',
        'servicePlan': 'Premium',
        'duration': '12 months',
        'startDate': '00/00/0000',
        'endDate': '00/00/0000',
        'status': 'Inactive',
      },
      {
        'userName': 'Ryan Gosling',
        'type': 'Car wash',
        'servicePlan': 'Premium',
        'duration': '12 months',
        'startDate': '00/00/0000',
        'endDate': '00/00/0000',
        'status': 'Active',
      },
    ]);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Subscriptions'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {
              // Implement filter functionality
            },
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: subscriptions.value.length,
        itemBuilder: (context, index) {
          final subscription = subscriptions.value[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // User Info
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          subscription['userName']!,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          subscription['type']!,
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  // Subscription Info
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Plan: ${subscription['servicePlan']}'),
                        Text('Duration: ${subscription['duration']}'),
                        Text('Start: ${subscription['startDate']}'),
                        Text('End: ${subscription['endDate']}'),
                      ],
                    ),
                  ),
                  // Status
                  Flexible(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: context.space.space_100,
                            vertical: context.space.space_100,
                          ),
                          decoration: BoxDecoration(
                            color: subscription['status'] == 'Active'
                                ? Colors.green[50]
                                : Colors.red[50],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: subscription['status'] == 'Active'
                                      ? Colors.green
                                      : Colors.red,
                                ),
                              ),
                              const SizedBox(width: 4),
                              Flexible(
                                child: Text(
                                  subscription['status']!,
                                  style: TextStyle(
                                    color: subscription['status'] == 'Active'
                                        ? Colors.green
                                        : Colors.red,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
