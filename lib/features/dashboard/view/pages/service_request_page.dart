import 'package:flutter/material.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';
import 'package:handcar_ventor/features/services/view/widgets/service_request_card_widget.dart';

class ServiceRequestPage extends StatelessWidget {
  const ServiceRequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<UserData> users = [
      UserData(
          name: 'Tom Cruise',
          mobile: '+44 7481 848 484',
          service: 'Tyre Change'),
      UserData(
          name: 'Tom Holland', mobile: '+91 9876543210', service: 'Denting'),
      UserData(
          name: 'Ana de Armas', mobile: '+7876543210', service: 'Car Wash'),
      UserData(
          name: 'Keenu Reaves',
          mobile: '+971 52 111 2233',
          service: 'Interior Cleaning'),
    ];

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Service Requests', style: context.typography.bodyLarge),
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: 'In Progress'),
              Tab(text: 'Pending'),
              Tab(text: 'Completed'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.separated(
              itemCount: users.length, // specify the item count
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemBuilder: (context, index) => ServiceRequestCardWidget(
                name: users[index].name,
                phoneNumber: users[index].mobile,
                serviceType: users[index].service,
              ),
            ),
            const Center(child: Text('Pending')),
            const Center(child: Text('Completed')),
          ],
        ),
      ),
    );
  }
}

// Assuming UserData and UserRowWidget are defined elsewhere correctly
class UserData {
  final String name;
  final String mobile;
  final String service;

  UserData({required this.name, required this.mobile, required this.service});
}

class UserRowWidget extends StatelessWidget {
  final UserData userData;

  const UserRowWidget({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(userData.name),
        subtitle: Column(
          children: [
            Text(userData.service),
            Text(userData.mobile),
          ],
        ),
        trailing: SizedBox(
          width: 120, // Specify a width to avoid layout conflicts
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.check)),
            ],
          ),
        ),
      ),
    );
  }
}
