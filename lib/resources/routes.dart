import 'package:go_router/go_router.dart';
import 'package:meal/domain/entities/receipt_entity.dart';
import 'package:meal/ui/screen/homeScreen.dart';
import 'package:meal/ui/screen/mealPlan/addMealPlanScreen.dart';
import 'package:meal/ui/screen/mealPlan/mealPlanDetailsScreen.dart';
import 'package:meal/ui/screen/receipt/receipt_details_screen.dart';

import '../data/modals/receipt/receipt_response.dart';

enum Routes {
  home("home", "/"),
  detailsScreen("details", '/details'),
  addMealPlanScreen("addMealPlan", "/addMealPlan"),
  mealPlanDetailsScreen("mealPlanDetails", "/mealPlanDetails");

  const Routes(this.name, this.path);

  final String name;
  final String path;
}

final GoRouter goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
        name: Routes.home.name,
        path: Routes.home.path,
        builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: Routes.detailsScreen.name,
      path: Routes.detailsScreen.path,
      builder: (context, state) => ReceiptDetailsScreen(receipt: state.extra as ReceiptResponse),
    ),
    GoRoute(
      name: Routes.addMealPlanScreen.name,
      path: Routes.addMealPlanScreen.path,
      builder: (context, state) => AddMealPlanScreen(),
    ),
    GoRoute(
      name: Routes.mealPlanDetailsScreen.name,
      path: Routes.mealPlanDetailsScreen.path,
      builder: (context, state) {
        final mealPlan = state.extra as Map<String, dynamic>;
        return MealPlanDetailsScreen(mealPlan: mealPlan);
      },
    ),
  ],
);