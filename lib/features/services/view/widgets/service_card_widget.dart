import 'package:flutter/material.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';

class ServiceCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;

  const ServiceCardWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
          vertical: context.space.space_100,
          horizontal: context.space.space_200),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4,
      shadowColor: Colors.grey.withOpacity(0.3),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title and subtitle section
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: context.typography.bodyLarge.copyWith(
                      fontWeight: FontWeight.bold,
                      color: context.colors.primaryTxt,
                    ),
                  ),
                  SizedBox(height: context.space.space_100),
                  Text(
                    subtitle,
                    style: context.typography.bodyMedium.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            // Price and actions section
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'AED $price',
                  style: context.typography.bodyMedium.copyWith(
                    color: Colors.green,
                  ),
                ),
                SizedBox(height: context.space.space_100),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.edit, color: context.colors.primary),
                      tooltip: "Edit Service",
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.delete_outline,
                          color: context.colors.primary),
                      tooltip: "Delete Service",
                    ),
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
