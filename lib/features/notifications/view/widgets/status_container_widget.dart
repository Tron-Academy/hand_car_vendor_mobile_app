import 'package:flutter/material.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';

class StatusContainerWidget extends StatelessWidget {
  final Color containerColor;
  final Color iconColor;
  final Color iconContainer;
  final Color textColor;
  final String text;
  final IconData icon;


  const StatusContainerWidget({
    super.key, required this.containerColor,required this.iconColor,required this.iconContainer, required this.textColor, required this.text, required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(context.space.space_100),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(context.space.space_200),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: context.space.space_100),
            child: Container(
              decoration: BoxDecoration(
                color: iconContainer,
                borderRadius:
                    BorderRadius.circular(context.space.space_500),
              ),
              child:  Icon(
                icon,
                color: iconColor,
              ),
            ),
          ),
          Text(
            text,
            style: context.typography.bodySmall
                .copyWith(color: textColor),
          ),
        ],
      ),
    );
  }
}