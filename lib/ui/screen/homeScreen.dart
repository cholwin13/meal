import 'package:flutter/material.dart';
import 'package:meal/data/dummyData/test_data.dart';
import 'package:meal/resources/app_color.dart';
import 'package:meal/resources/app_images.dart';
import 'package:meal/resources/app_strings.dart';
import 'package:meal/resources/dimens.dart';

import '../widget/pickup_list_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<Widget> _tabs = [
    const PickUpList(),
    const PickUpCompleteList(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: context.appColors.colorPrimary,
          // automaticallyImplyLeading: false,
          leading: Image.asset(AppImages.logo, width: kMarginSmall_3, height: kMarginSmall_3,),
          bottom: TabBar(
            indicatorColor: Colors.white,
            labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),  //For Selected tab
            unselectedLabelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w200),
            tabs: [
              Tab(text: AppStrings.recipe),
              Tab(text: AppStrings.mealPlan),
            ],
          ),
        ),
        body: TabBarView(
            children: _tabs
        ),
      ),
    );
  }
}

class PickUpList extends StatelessWidget {
  const PickUpList({super.key});

  @override
  Widget build(BuildContext context) {
    return const PickupListWidget(listData: pickupData,);
  }
}

class PickUpCompleteList extends StatelessWidget {
  const PickUpCompleteList({super.key});

  @override
  Widget build(BuildContext context) {
    return const PickupListWidget(listData: pickupData,);
  }
}