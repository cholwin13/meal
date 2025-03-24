import 'package:flutter/material.dart';
import 'package:meal/resources/app_color.dart';
import 'package:meal/resources/app_strings.dart';

import '../../../resources/dimens.dart';
import 'editMealScreen.dart';

class AddMealPlanScreen extends StatefulWidget {
  @override
  _AddMealPlanScreenState createState() => _AddMealPlanScreenState();
}

class _AddMealPlanScreenState extends State<AddMealPlanScreen> {
  final TextEditingController _mealPlanController = TextEditingController();
  final Map<String, Map<String, String>> _mealDetails = {};

  @override
  void initState() {
    super.initState();
    for (var day in ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']) {
      _mealDetails[day] = {'Breakfast': '', 'Lunch': '', 'Dinner': ''};
    }
  }

  void _saveMealPlan() {
    if (_mealPlanController.text.isNotEmpty) {
      Navigator.pop(context, {'mealPlanTitle': _mealPlanController.text, 'mealData': _mealDetails});
    }
  }

  void _navigateToEditMeal(String day) async {
    final updatedMeals = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditMealScreen(
          day: day,
          initialMeals: Map<String, String>.from(_mealDetails[day]!),
        ),
      ),
    );

    if (updatedMeals != null) {
      setState(() {
        _mealDetails[day] = updatedMeals;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.addMealPlan, style: TextStyle(color: Colors.white)),
        backgroundColor: context.appColors.colorPrimary,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.check, color: Colors.white),
            onPressed: _saveMealPlan,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(kMarginMedium_2),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _mealPlanController,
                decoration: InputDecoration(
                  labelText: 'Meal Plan Title',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: kMarginMedium_2),
              for (var day in _mealDetails.keys)
                Card(
                  elevation: 4,
                  child: ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(day, style: TextStyle(fontSize: textRegular2X + 2, fontWeight: FontWeight.bold)),
                        IconButton(
                          icon: Icon(Icons.edit, color: context.appColors.colorPrimary),
                          onPressed: () => _navigateToEditMeal(day),
                        )
                      ],
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Breakfast: ${_mealDetails[day]!['Breakfast']}"),
                        Text("Lunch: ${_mealDetails[day]!['Lunch']}"),
                        Text("Dinner: ${_mealDetails[day]!['Dinner']}"),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

