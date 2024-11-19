import 'package:flutter/material.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';
import 'package:handcar_ventor/features/notifications/view/widgets/status_container_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotificationPage extends HookConsumerWidget {
  static const route = "/notification";

  const NotificationPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: context.typography.h3,
        ),
      ),
      body: ListView(
        children: [
          // Service Requests Section
          Padding(
            padding: EdgeInsets.all(context.space.space_125),
            child: Text(
              'Service Requests',
              style: context.typography.bodyLarge,
            ),
          ),
          // Example of a service request item
          ListTile(
            title: Text(
              'Service Request 1',
              style: context.typography.bodyMedium,
            ),
            subtitle: Text(
              'Details about service request 1',
              style: context.typography.bodySmall,
            ),
            trailing: const StatusContainerWidget(
              containerColor: Color.fromARGB(159, 199, 249, 190),
              iconColor: Colors.white,
              iconContainer: Colors.green,
              textColor: Colors.green,
              text: 'Accepted',
              icon: Icons.check,
            ),
            onTap: () {
              // Handle tap
            },
          ),
          // Add more service request items here...

          // Completed Works Section
          Padding(
            padding: EdgeInsets.all(context.space.space_125),
            child: Text(
              'Completed Works',
              style: context.typography.bodyLarge,
            ),
          ),
          // Example of a completed work item
          ListTile(
            title: Text(
              'Completed Work 1',
              style: context.typography.bodyMedium,
            ),
            subtitle: Text(
              'Details about completed work 1',
              style: context.typography.bodySmall,
            ),
            trailing: const StatusContainerWidget(
              containerColor: Color.fromARGB(159, 199, 249, 190),
              iconColor: Colors.white,
              iconContainer: Colors.green,
              textColor: Colors.green,
              text: 'Accepted',
              icon: Icons.check,
            ),
            onTap: () {
              // Handle tap
            },
          ),
          // Add more completed work items here...
        ],
      ),
    );
  }
}


//const Color.fromARGB(159, 199, 249, 190)