import 'package:flutter/material.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';

//Card Widget For Dashboard
class CardWidget extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  final IconData icon;

  const CardWidget(
      {super.key, required this.title, required this.value, required this.color, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(context.space.space_200),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32, color: color),
            SizedBox(height: context.space.space_100),
            Text(
              value,
              style: context.typography.h3.copyWith(color: color),
            ),
            SizedBox(height: context.space.space_100),
            Text(
              textAlign: TextAlign.center,

              title,
                style: context.typography.bodySmall.copyWith(color: Colors.grey[600]),
              ),
            
          ],
        ),
      ),
    );
  }
}