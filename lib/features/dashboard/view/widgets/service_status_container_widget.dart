import 'package:flutter/material.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';
import 'package:handcar_ventor/features/dashboard/view/widgets/border_beam.dart';

class ServiceStatusContainerWidget extends StatelessWidget {
  final String customer;
  final String time;
  final String location;
  final String service;
  final String status;
  final String price;

  final Color color;
  final String type;

  const ServiceStatusContainerWidget({
    super.key,
    required this.customer,
    required this.time,
    required this.location,
    required this.service,
    required this.status,
    required this.price,
    required this.color,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return BorderBeam(
      colorFrom: Colors.blue,
      colorTo: Colors.purple,
      staticBorderColor: const Color.fromARGB(255, 39, 39, 42),
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: context.colors.white),
        child: Padding(
          padding: EdgeInsets.all(context.space.space_100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    customer,
                    style: context.typography.bodyLarge,
                  ),
                  Text(
                    time,
                    style: context.typography.bodyMedium,
                  ),
                ],
              ),
              SizedBox(height: context.space.space_100),
              Text(
                location,
                style: context.typography.bodyMedium,
              ),
              SizedBox(height: context.space.space_100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        service,
                        style: context.typography.bodyMedium
                            .copyWith(color: context.colors.secondaryTxt),
                      ),
                      SizedBox(height: context.space.space_100),
                      Text(
                        price,
                        style: context.typography.bodyLarge,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        type,
                        style: context.typography.bodyMedium,
                      ),
                      SizedBox(height: context.space.space_100),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: context.space.space_100,
                          vertical: context.space.space_50,
                        ),
                        decoration: BoxDecoration(
                          color: color.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          status,
                          style: TextStyle(
                            color: color,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
