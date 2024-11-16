import 'package:flutter/material.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';

class ServiceRequestPage extends StatelessWidget {
  const ServiceRequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<UserData> users = [
      UserData(name: 'Tom Cruise', mobile: '1234567890', service: 'Maintenance'),
      UserData(name: 'Angelina Jolie', mobile: '1234567890', service: 'Maintenance'),
      UserData(name: 'Dwayne Johnson', mobile: '1234567890', service: 'Maintenance'),
      UserData(name: 'Irfan Khan', mobile: '1234567890', service: 'Maintenance'),
    ];

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Service Requests', style: context.typography.bodyLarge),
          // ignore: prefer_const_constructors
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            tabs: const [
              Tab(text: 'In Progress'),
              Tab(text: 'Pending'),
              Tab(text: 'Completed'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: users.length, // specify the item count
              itemBuilder: (context, index) => UserRowWidget(userData: users[index]),
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
    return ListTile(
      title: Text(userData.name),
      subtitle: Text(userData.service),
      trailing: Text(userData.mobile),
    );
  }
}