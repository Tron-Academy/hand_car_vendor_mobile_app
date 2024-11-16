import 'package:flutter/material.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';
import 'package:handcar_ventor/features/services/view/widgets/outline_button_widget.dart';

class ServiceRequestCardWidget extends StatelessWidget {
  final String name;
  final String phoneNumber;
  final String serviceType;
  const ServiceRequestCardWidget(
      {super.key,
      required this.name,
      required this.phoneNumber,
      required this.serviceType});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white30, // dark color similar to the image
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: context.typography.bodyLarge.copyWith(
              color: context.colors.primaryTxt,
            ),
          ),
          SizedBox(height: context.space.space_100),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                phoneNumber,
                style: context.typography.bodyLarge.copyWith(
                  color: context.colors.secondaryTxt,
                ),
              ),
              OutlineToggleButton(
                  label: "Accept",
                  outlineIcon: Icons.check,
                  filledIcon: Icons.check,
                  outlineColor: Colors.green,
                  onTap: () {})
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: context.space.space_100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  serviceType,
                  style: context.typography.bodySemiBold.copyWith(
                    color: context.colors.primaryTxt,
                  ),
                ),
                OutlineToggleButton(
                    label: "Decline",
                    outlineIcon: Icons.close,
                    filledIcon: Icons.close,
                    outlineColor: Color(0xffA70909),
                    onTap: () {})
              ],
            ),
          ),
        ],
      ),
    );
  }
}
