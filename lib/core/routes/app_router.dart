import 'package:go_router/go_router.dart';
import 'package:news/core/routes/bookmark_routes.dart';
import 'package:news/core/routes/bottom_nav.dart';
import 'package:news/core/routes/home_routes.dart';
import 'package:news/core/routes/search_routes.dart';
import 'package:news/core/routes/settings_routes.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return BottomNav(child: child);
      },
      routes: [
        ...homeRoutes,
        ...searchRoutes,
        ...bookmarkRoutes,
        ...settingsRoutes,
      ],
    ),
  ],
);
