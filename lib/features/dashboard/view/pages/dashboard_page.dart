import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';
import 'package:handcar_ventor/features/dashboard/view/widgets/drawer_widget.dart';
import 'package:handcar_ventor/features/dashboard/view/widgets/service_status_container_widget.dart';
import 'package:handcar_ventor/gen/assets.gen.dart';


class DashboardPage extends HookWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: AppBar(
        backgroundColor: context.colors.white,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text(
          'Dashboard',
          style: context.typography.h3,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.message_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {},
          ),
        ],
      ),
      drawer: const DrawerWidget(),
      body: Padding(
        padding: EdgeInsets.all(context.space.space_200),
        child: Column(
          children: [
            SizedBox(
              height: 120,
              child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ContainerWidget(
                      title: 'Services Requests',
                      icon: Assets.icons.icService,
                      count: '2000',
                    ),
                    ContainerWidget(
                      title: 'Transactions',
                      icon: Assets.icons.icTransaction,
                      count: '20',
                    )
                  ]),
            ),
            SizedBox(
              height: context.space.space_75,
            ),
            ServiceStatusContainerWidget(
              customer: 'Leo Messi',
              time: '12:00',
              location: 'First Street, 123,Barcelona,Spain',
              service: 'Car Wash',
              status: 'Pending',
              price: '\$100',
              color: context.colors.primary,
              type: 'Service',
            )
          ],
        ),
      ),
      
    );
  }
}


class ContainerWidget extends StatelessWidget {
  final String title;
  final String icon;
  final String count;
  const ContainerWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: context.space.space_50, vertical: context.space.space_50),
      child: Container(
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(children: [
          Row(children: [
            Padding(
              padding: EdgeInsets.all(context.space.space_100),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffEDE9FA),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(context.space.space_100),
                  child: SvgPicture.asset(
                    icon,
                    height: 30,
                    width: 30,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: context.space.space_200),
              child: Text(title,
                  style: context.typography.bodyLarge
                      .copyWith(color: context.colors.primaryTxt)),
            )
          ]),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: context.space.space_900),
                child: Text(count,
                    style: context.typography.h3.copyWith(
                      color: context.colors.secondaryTxt,
                    )),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
