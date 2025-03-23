import 'package:go_router/go_router.dart';
import 'package:meal/domain/entities/receipt_entity.dart';
import 'package:meal/ui/screen/homeScreen.dart';
import 'package:meal/ui/screen/receipt/receipt_details_screen.dart';

import '../data/modals/receipt/receipt_response.dart';

enum Routes {
  home("home", "/"),
  detailsScreen("details", '/details');

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
  ],
);