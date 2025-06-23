import 'package:go_router/go_router.dart';
import 'package:news/features/home/view/screens/home_screen.dart';

final homeRoutes = [
  GoRoute(path: "/", builder: (context, state) => HomeScreen()),
];
