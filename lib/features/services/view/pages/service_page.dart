import 'package:flutter/material.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';
import 'package:handcar_ventor/features/services/view/pages/add_service_page.dart';
import 'package:handcar_ventor/features/services/view/widgets/service_card_widget.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.colors.white,
        title: const Text('Services'),
        centerTitle: true,
        actions: [
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddServiceScreen()));
            },
            icon: Icon(Icons.add, color: context.colors.primary),
            label: Text('Add',
                style: context.typography.bodyMedium
                    .copyWith(color: context.colors.primary)),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => ServiceCardWidget(
          title: 'Steam Wash',
          subtitle: 'Washing',
          price: '1243',
        ),
      ),
    );
  }
}
