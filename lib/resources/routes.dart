import 'package:go_router/go_router.dart';
import 'package:meal/ui/screen/homeScreen.dart';

enum Routes {
  home("home", "/");

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
  ],
);