import 'package:go_router/go_router.dart';
import 'package:news/features/home/presentation/screens/pages/home_screen.dart';

final homeRoutes = [
  GoRoute(path: "/", builder: (context, state) => HomeScreen()),
];
