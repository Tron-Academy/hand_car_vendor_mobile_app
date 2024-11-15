import 'package:flutter/material.dart';

class UserData {
  final String name;
  final String mobile;
  final String service;
  UserData({required this.name, required this.mobile, required this.service});
}

List<UserData> users = [
  UserData(name: 'Tom Cruise', mobile: '1234567890', service: 'Maintenance'),
  UserData(name: 'Angelina Jolie', mobile: '1234567890', service: 'Maintenance'),
  UserData(name: 'Dwayne Johnson', mobile: '1234567890', service: 'Maintenance'),
  UserData(name: 'Irfan Khan', mobile: '1234567890', service: 'Maintenance'),
];


class UserRowWidget extends StatelessWidget {
  final UserData userData;

  const UserRowWidget({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(userData.name),
          Text(userData.mobile),
          Text(userData.service),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.check_circle, color: Colors.green),
                onPressed: () {}, // Implement the Accept functionality
              ),
              IconButton(
                icon: Icon(Icons.cancel, color: Colors.red),
                onPressed: () {}, // Implement the Decline functionality
              ),
            ],
          ),
        ],
      ),
    );
  }
}