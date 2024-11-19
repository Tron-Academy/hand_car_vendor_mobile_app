import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotificationPage extends HookConsumerWidget {
  static const route = "/notification";

  const NotificationPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView(
        children: [
            // Service Requests Section
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Service Requests',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          // Example of a service request item
          ListTile(
            title: Text('Service Request 1'),
            subtitle: Text('Details about service request 1'),
            onTap: () {
              // Handle tap
            },
          ),
          // Add more service request items here...

          // Completed Works Section
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Completed Works',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          // Example of a completed work item
          ListTile(
            title: Text('Completed Work 1'),
            subtitle: Text('Details about completed work 1'),
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
