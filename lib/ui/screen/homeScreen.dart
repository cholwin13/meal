import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal/resources/app_color.dart';
import 'package:meal/resources/app_strings.dart';
import 'package:meal/resources/dimens.dart';

import '../../blocs/receipt/receipt_bloc.dart';
import '../../data/datasource/local/dummyData/test_data.dart';
import 'fav/fav_list_screen.dart';
import 'mealPlan/mealPlanScreen.dart';
import '../widget/receipt_list_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<Widget> _tabs = [
    const ReceiptList(),
    const FavouriteList(),
    const MealPlanList(),
  ];

  @override
  void initState() {
    super.initState();
    context.read<ReceiptBloc>().add(ReceiptListListEvent("715538", false));
  }

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
              Tab(text: AppStrings.fav),
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

class FavouriteList extends StatelessWidget {
  const FavouriteList({super.key});

  @override
  Widget build(BuildContext context) {
    return FavouriteListScreen();
  }
}

class MealPlanList extends StatelessWidget {
  const MealPlanList({super.key});

  @override
  Widget build(BuildContext context) {
    return MealPlanScreen();
  }
}