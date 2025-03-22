import 'package:flutter/material.dart';
import 'package:meal/data/dummyData/test_data.dart';
import 'package:meal/resources/app_color.dart';
import 'package:meal/resources/app_strings.dart';
import 'package:meal/resources/dimens.dart';

import '../widget/receipt_list_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<Widget> _tabs = [
    const ReceiptList(),
    const MealPlanList(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: context.appColors.colorPrimary,
          toolbarHeight: kMarginLarge,
          bottom: TabBar(
            indicatorColor: Colors.white,
            labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: textRegular3X),
            unselectedLabelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w200, fontSize: textRegular2X),
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

class ReceiptList extends StatelessWidget {
  const ReceiptList({super.key});

  @override
  Widget build(BuildContext context) {
    return ReceiptListWidget(listData: dummyData,);
  }
}

class MealPlanList extends StatelessWidget {
  const MealPlanList({super.key});

  @override
  Widget build(BuildContext context) {
    return ReceiptListWidget(listData: dummyData,);
  }
}