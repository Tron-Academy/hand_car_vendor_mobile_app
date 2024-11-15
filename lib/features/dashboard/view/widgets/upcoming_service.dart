import 'package:flutter/material.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';
import 'package:intl/intl.dart';

class UpcomingServiceCard extends StatelessWidget {
  final List<Map<String, dynamic>> services;  
  const UpcomingServiceCard({super.key, required this.services});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Upcoming Services',
          style: context.typography.h3.copyWith(color: context.colors.secondaryTxt)
        ),
        SizedBox(height: context.space.space_200),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: services.length,
          itemBuilder: (context, index) {
            final service = services[index];
            return Card(
              margin: EdgeInsets.only(bottom: context.space.space_200),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue[100],
                  child: const Icon(Icons.car_repair, color: Colors.blue),
                ),
                title: Text(service['customerName']),
                subtitle:
                    Text('${service['carModel']} - ${service['serviceType']}'),
                trailing: Text(
                  DateFormat('HH:mm').format(service['scheduledTime']),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                
              ),
            );
          },
        ),
      ],
    );
  }
}