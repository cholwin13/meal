import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'meal_plan_state.dart';

class MealPlanCubit extends Cubit<List<String>> {
  MealPlanCubit() : super([]);

  Future<void> loadMealPlans() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? storedList = prefs.getString('mealPlans');
    if (storedList != null) {
      emit(List<String>.from(jsonDecode(storedList)));
    }
  }

  Future<void> saveMealPlans(List<String> mealPlans) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('mealPlans', jsonEncode(mealPlans));
  }

  void addMealPlan(String mealPlan) {
    final updatedMealPlans = List<String>.from(state)..add(mealPlan);
    emit(updatedMealPlans);
    saveMealPlans(updatedMealPlans);
  }
}
