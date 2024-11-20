import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';
import 'package:handcar_ventor/features/services/view/pages/add_service_page.dart';
import 'package:handcar_ventor/features/services/view/widgets/service_card_widget.dart';

class ServicePage extends StatelessWidget {
  static const route = "/service";
  const ServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //List View For Added Services
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => const ServiceCardWidget(
          title: 'Tyre Change',
          subtitle: 'General',
          price: '124',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: context.colors.primary,
        onPressed: () {
          context.push(AddServiceScreen.route);
        },
        child: Icon(Icons.add, color: context.colors.white),
      ),
    );
  }
}
