import 'package:go_router/go_router.dart';
import 'package:news/features/bookmark/view/screens/bookmark_screen.dart';

final bookmarkRoutes = [
  GoRoute(path: "/bookmark", builder: (context, state) => BookmarkScreen()),
];
