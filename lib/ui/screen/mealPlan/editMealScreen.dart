import 'package:flutter/material.dart';
import 'package:meal/resources/app_color.dart';

import 'mealPlanFavScreen.dart';

class EditMealScreen extends StatefulWidget {
  final String day;
  final Map<String, String> initialMeals;

  const EditMealScreen({required this.day, required this.initialMeals});

  @override
  _EditMealScreenState createState() => _EditMealScreenState();
}

class _EditMealScreenState extends State<EditMealScreen> {
  late TextEditingController _breakfastController;
  late TextEditingController _lunchController;
  late TextEditingController _dinnerController;

  @override
  void initState() {
    super.initState();
    _breakfastController = TextEditingController(text: widget.initialMeals['Breakfast']);
    _lunchController = TextEditingController(text: widget.initialMeals['Lunch']);
    _dinnerController = TextEditingController(text: widget.initialMeals['Dinner']);
  }

  void _saveEditedMeal() {
    Navigator.pop(context, {
      'Breakfast': _breakfastController.text,
      'Lunch': _lunchController.text,
      'Dinner': _dinnerController.text,
    });
  }

  Future<void> _navigateToFavoriteList(String mealType) async {
    final selectedFavorite = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MealPlanFavScreen(),
      ),
    );
    if (selectedFavorite != null) {
      if (mealType == 'Breakfast') {
        _breakfastController.text = selectedFavorite;
      } else if (mealType == 'Lunch') {
        _lunchController.text = selectedFavorite;
      } else if (mealType == 'Dinner') {
        _dinnerController.text = selectedFavorite;
      }
    }
  }

  @override
  void dispose() {
    _breakfastController.dispose();
    _lunchController.dispose();
    _dinnerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.day} Meal Plan", style: TextStyle(color: Colors.white)),
        backgroundColor: context.appColors.colorPrimary,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.check, color: Colors.white),
            onPressed: _saveEditedMeal,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _breakfastController,
                    decoration: InputDecoration(labelText: 'Breakfast', border: OutlineInputBorder()),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => _navigateToFavoriteList('Breakfast'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _lunchController,
                    decoration: InputDecoration(labelText: 'Lunch', border: OutlineInputBorder()),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => _navigateToFavoriteList('Lunch'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _dinnerController,
                    decoration: InputDecoration(labelText: 'Dinner', border: OutlineInputBorder()),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => _navigateToFavoriteList('Dinner'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
