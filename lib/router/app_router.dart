import 'package:go_router/go_router.dart';
import 'package:jaho_coding_challenge/features/home/ui/home_page.dart';

class AppRouter {
  AppRouter._();

  static const String home = '/';

  static GoRouter get router => _router;

  static final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      )
    ],
  );
}
