import 'package:go_router/go_router.dart';
import 'package:news/features/search/view/screens/search_screen.dart';

final searchRoutes = [
  GoRoute(path: "/search", builder: (context, state) => SearchScreen()),
];
