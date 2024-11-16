import 'package:flutter/material.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';

class DashBordDataContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final String count;
  const DashBordDataContainer(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(context.space.space_100),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(context.space.space_100),
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title, style: context.typography.bodyLarge),
              Text(
                subtitle,
                style: context.typography.bodySmall
                    .copyWith(color: Colors.blueGrey),
              ),
            ],
          ),
          Text(
            count,
            style: context.typography.bodyLarge.copyWith(color: Colors.green),
          ),
        ],
      ),
    );
  }
}
