import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';
import 'package:handcar_ventor/features/services/view/pages/add_service_page.dart';
import 'package:handcar_ventor/features/services/view/widgets/service_card_widget.dart';
import 'package:handcar_ventor/features/services/view_model/service_list_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:handcar_ventor/features/services/view_model/service_controller.dart';

class ServicePage extends ConsumerWidget {
  static const route = "/service";
  const ServicePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final servicesAsync = ref.watch(serviceListControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Services'),
      ),
      body: servicesAsync.when(
        data: (services) {
          if (services == null || services.isEmpty) {
            return const Center(
              child: Text("No services available"),
            );
          }

          return ListView.builder(
            itemCount: services.length,
            itemBuilder: (context, index) {
              final service = services[index];
              return ServiceCardWidget(
                title: service.serviceName,
                subtitle: service.serviceCategory,
                price: service.rate.toString(),
              );
            },
          );
        },
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, stack) => Center(
          child: Text("Error: $error"),
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
