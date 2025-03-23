import 'package:flutter/material.dart';
import 'package:meal/resources/app_color.dart';

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
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            for (var day in mealData.keys)
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          day,
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: context.appColors.colorPrimary),
                        ),
                        const SizedBox(height: 8),
                        for (var meal in mealData[day]!.keys)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              '$meal: ${mealData[day]![meal]}',
                              style: TextStyle(fontSize: 16),
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
