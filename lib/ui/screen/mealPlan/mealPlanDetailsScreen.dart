import 'package:flutter/material.dart';
import 'package:meal/resources/app_color.dart';
import 'package:meal/resources/dimens.dart';

class MealPlanDetailsScreen extends StatelessWidget {
  final Map<String, dynamic> mealPlan;

  const MealPlanDetailsScreen({Key? key, required this.mealPlan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mealData = mealPlan['mealData'];

    return Scaffold(
      appBar: AppBar(
        title: Text(mealPlan['mealPlanTitle'], style: TextStyle(color: Colors.white)),
        backgroundColor: context.appColors.colorPrimary,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(kMarginMedium_2),
        child: ListView(
          children: [
            for (var day in mealData.keys)
              Padding(
                padding: const EdgeInsets.only(bottom: kMarginMedium_2),
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(kMarginSmall_3),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          day,
                          style: TextStyle(fontSize: textRegular2X + 2, fontWeight: FontWeight.bold, color: context.appColors.colorPrimary),
                        ),
                        const SizedBox(height: kMarginSmall_3),
                        for (var meal in mealData[day]!.keys)
                          Padding(
                            padding: const EdgeInsets.only(bottom: kMarginSmall_3),
                            child: Text(
                              '$meal: ${mealData[day]![meal]}',
                              style: TextStyle(fontSize: textRegular2X + 2),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
