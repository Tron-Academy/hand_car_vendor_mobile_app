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
      body: ListView.builder(
        padding: EdgeInsets.all(context.space.space_200),
        itemCount: subscriptions.value.length,
        itemBuilder: (context, index) {
          final subscription = subscriptions.value[index];
          return Card(
            margin: EdgeInsets.only(bottom: context.space.space_200),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(context.space.space_200),
            ),
            elevation: 4,
            child: Padding(
              padding: EdgeInsets.all(context.space.space_200),
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
                          style: context.typography.bodyMedium,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: context.space.space_100),
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
                        Text('Plan: ${subscription['servicePlan']}',
                            style: context.typography.bodySmall),
                        Text('Duration: ${subscription['duration']}',
                            style: context.typography.bodySmall),
                        Text('Start: ${subscription['startDate']}',
                            style: context.typography.bodySmall),
                        Text('End: ${subscription['endDate']}',
                            style: context.typography.bodySmall),
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
                            borderRadius:
                                BorderRadius.circular(context.space.space_150),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: context.space.space_100,
                                height: context.space.space_100,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: subscription['status'] == 'Active'
                                      ? Colors.green
                                      : Colors.red,
                                ),
                              ),
                              SizedBox(width: context.space.space_25),
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
