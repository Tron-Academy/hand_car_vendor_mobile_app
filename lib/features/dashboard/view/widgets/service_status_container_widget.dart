import 'package:flutter/material.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';
import 'package:handcar_ventor/features/dashboard/view/widgets/drop_down_button_widget.dart';

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
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:
              isDarkMode ? const Color(0xff3B3B3D) : const Color(0xffEDE9FA)),
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
            Text(location, style: context.typography.bodyMedium),
            SizedBox(height: context.space.space_100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(service, style: context.typography.bodyMedium),
                    SizedBox(height: context.space.space_100),
                    Text(price, style: context.typography.bodyLarge),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(type, style: context.typography.bodyMedium),
                    SizedBox(height: context.space.space_100),
                    // Container(
                    //   padding: EdgeInsets.symmetric(
                    //     horizontal: context.space.space_100,
                    //     vertical: context.space.space_50,
                    //   ),
                    //   decoration: BoxDecoration(
                    //     color: color.withOpacity(0.1),
                    //     borderRadius: BorderRadius.circular(12),
                    //   ),
                    //   child: Text(
                    //     status,
                    //     style: context.typography.bodyMedium
                    //         .copyWith(color: color),
                    //   ),
                    // ),
                    const StatusDropdownButton()
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
