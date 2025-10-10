import 'package:go_router/go_router.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/entities/gifs_entity.dart';
import 'package:test_task_chili_labs/feature/gifs_list/presentation/pages/gif_detail_screen.dart';
import 'package:test_task_chili_labs/feature/gifs_list/presentation/pages/gifs_list_screen.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const GifListScreen()),
    GoRoute(
      path: '/gif-detail',
      builder: (context, state) {
        final gif = state.extra as GifsEntity;
        return GifDetailScreen(gif: gif);
      },
    ),
  ],
);
