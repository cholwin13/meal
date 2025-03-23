import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:meal/resources/app_color.dart';
import 'package:meal/resources/app_strings.dart';
import 'package:meal/resources/dimens.dart';
import 'package:meal/resources/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'addMealPlanScreen.dart';

class MealPlanScreen extends StatefulWidget {
  @override
  _MealPlanScreenState createState() => _MealPlanScreenState();
}

class _MealPlanScreenState extends State<MealPlanScreen> {
  List<Map<String, dynamic>> mealPlans = [];

  @override
  void initState() {
    super.initState();
    _loadMealPlans();
  }

  void _loadMealPlans() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? storedList = prefs.getString('mealPlans');
    if (storedList != null) {
      setState(() {
        mealPlans = List<Map<String, dynamic>>.from(
          (jsonDecode(storedList) as List)
              .map((e) => Map<String, dynamic>.from(e)),
        );
      });
    }
  }

  void _saveMealPlans() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('mealPlans', jsonEncode(mealPlans));
  }

  void _navigateToAddMealPlanScreen() async {
    final result = await goRouter.push(Routes.addMealPlanScreen.path);

    if (result != null && result is Map) {
      setState(() {
        mealPlans.add({
          'mealPlanTitle': result['mealPlanTitle'],
          'mealData': result['mealData'],
        });
        _saveMealPlans();
      });
    }
  }

  void _navigateToMealPlanDetailsScreen(Map<String, dynamic> mealPlan) async {
    await goRouter.push(Routes.mealPlanDetailsScreen.path, extra: mealPlan);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(kMarginSmall_3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton.icon(
              onPressed: _navigateToAddMealPlanScreen,
              icon: Icon(Icons.add_rounded, size: kMarginMedium_3, color: context.appColors.colorPrimary),
              label: Text(AppStrings.addMealPlan, style: TextStyle(color: context.appColors.colorPrimary),),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: kMarginCardMedium),
                textStyle: const TextStyle(fontSize: textRegular2X, fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(boxRadius_2),
                ),
              ),
            ),
            const SizedBox(height: kMarginCardMedium),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                ),
                itemCount: mealPlans.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => _navigateToMealPlanDetailsScreen(mealPlans[index]),
                    child: Card(
                      elevation: 2,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                            mealPlans[index]['mealPlanTitle'],
                            style: TextStyle(fontSize: textRegular, fontWeight: FontWeight.bold, color: context.appColors.colorPrimary),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}