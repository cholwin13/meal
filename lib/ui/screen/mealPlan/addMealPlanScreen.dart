import 'package:flutter/material.dart';
import 'package:meal/resources/app_color.dart';
import 'package:meal/resources/app_strings.dart';

class AddMealPlanScreen extends StatefulWidget {
  @override
  _AddMealPlanScreenState createState() => _AddMealPlanScreenState();
}

class _AddMealPlanScreenState extends State<AddMealPlanScreen> {
  final TextEditingController _mealPlanController = TextEditingController();
  final Map<String, Map<String, TextEditingController>> _mealDetails = {};

  @override
  void initState() {
    super.initState();
    for (var day in ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']) {
      _mealDetails[day] = {
        'Breakfast': TextEditingController(),
        'Lunch': TextEditingController(),
        'Dinner': TextEditingController(),
      };
    }
  }

  void _saveMealPlan() {
    if (_mealPlanController.text.isNotEmpty) {
      Map<String, Map<String, String>> mealData = {};
      _mealDetails.forEach((day, meals) {
        mealData[day] = {
          'Breakfast': meals['Breakfast']?.text ?? '',
          'Lunch': meals['Lunch']?.text ?? '',
          'Dinner': meals['Dinner']?.text ?? '',
        };
      });

      Navigator.pop(context, {'mealPlanTitle': _mealPlanController.text, 'mealData': mealData});
    }
  }

  @override
  void dispose() {
    _mealPlanController.dispose();
    _mealDetails.forEach((day, meals) {
      meals['Breakfast']?.dispose();
      meals['Lunch']?.dispose();
      meals['Dinner']?.dispose();
    });
    super.dispose();
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
        padding: const EdgeInsets.all(16.0),
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
              const SizedBox(height: 16),
              for (var day in ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'])
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
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          _buildMealInputField(day, 'Breakfast'),
                          _buildMealInputField(day, 'Lunch'),
                          _buildMealInputField(day, 'Dinner'),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMealInputField(String day, String mealType) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextField(
        controller: _mealDetails[day]?[mealType],
        decoration: InputDecoration(
          labelText: mealType,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
