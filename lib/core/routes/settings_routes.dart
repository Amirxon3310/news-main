import 'package:go_router/go_router.dart';
import 'package:news/features/settings/view/screens/settings_screen.dart';

final settingsRoutes = [
  GoRoute(path: "/settings", builder: (context, state) => SettingsScreen()),
];
