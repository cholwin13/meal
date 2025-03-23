import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal/core/extensions/dialog_extension.dart';
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
    context.read<ReceiptBloc>().add(ReceiptListListEvent(
        "715538,716429,635675, 641836,633858,665553,654679,636177,638893", false));
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
            labelStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: textRegular3X),
            unselectedLabelStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w200,
                fontSize: textRegular2X),
            tabs: [
              Tab(text: AppStrings.recipe),
              Tab(text: AppStrings.fav),
              Tab(text: AppStrings.mealPlan),
            ],
          ),
        ),
        body: TabBarView(children: _tabs),
      ),
    );
  }
}

class ReceiptList extends StatelessWidget {
  const ReceiptList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ReceiptBloc, ReceiptState>(
      listener: (context, state) {
        if(state is ReceiptListLoadingState){
          context.showLoading();
        }else if(state is ReceiptListSuccessState){
          context.hideLoading();
        }else if(state is ReceiptListFailState){
          context.showLoading();
        }
      },
      child: BlocBuilder<ReceiptBloc, ReceiptState>(
        buildWhen: (previous, state) {
          return state is ReceiptListSuccessState;
        },
        builder: (context, state) {
          if (state is ReceiptListSuccessState) {
            return ReceiptListWidget(
              listData: state.data,
            );
          }
          return SizedBox();
        },
      ),
    );
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
