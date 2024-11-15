import 'package:flutter/material.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';
import 'package:handcar_ventor/features/services/view/widgets/tab_bar_widget.dart';

class ServiceRequestPage extends StatelessWidget {
  const ServiceRequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Service Requests', style: context.typography.bodyLarge),
      ),
      body: DefaultTabController(
        length: 3,
        child: PrimaryContainer(
          radius: 30,
          child: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.transparent,
              dividerColor: Colors.transparent,
              labelColor: Colors.white,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(colors: [
                    Color(0XFF5E5E5E),
                    Color(0XFF3E3E3E),
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
              tabs: const [
                Tab(
                  text: 'In Progress',
                ),
                Tab(
                  text: 'Pending',
                ),
                Tab(
                  text: 'Completed',
                ),
              ]),
        ),
      ),
    );
  }
}
