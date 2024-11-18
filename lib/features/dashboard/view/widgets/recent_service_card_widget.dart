import 'package:flutter/material.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';
import 'package:intl/intl.dart';

//Recent Service Card Widget
class RecentServiceCard extends StatelessWidget {
  //Services List
  final List<Map<String, dynamic>> services;

  const RecentServiceCard({
    super.key,
    required this.services,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Recent Services Text
        Text('Recent Services',
            style: context.typography.h3
                .copyWith(color: context.colors.secondaryTxt)),
        SizedBox(height: context.space.space_200),
        //List View For Recent Services
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
                  backgroundColor: Colors.green[100],
                  child: const Icon(Icons.check, color: Colors.green),
                ),
                //Customer Name
                title: Text(service['customerName']),
                //Car Model and Service Type
                subtitle:
                    Text('${service['carModel']} - ${service['serviceType']}'),
                //Amount and Date
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('\$${service['amount'].toStringAsFixed(2)}',
                        style: context.typography.bodyMedium
                            .copyWith(color: Colors.green)),
                    Text(
                      DateFormat('MM/dd').format(service['date']),
                      style: context.typography.bodySmall
                          .copyWith(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
