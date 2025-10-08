import 'package:go_router/go_router.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/entities/gifts_entity.dart';
import 'package:test_task_chili_labs/feature/gifs_list/presentation/pages/gif_detail_screen.dart';
import 'package:test_task_chili_labs/feature/gifs_list/presentation/pages/gift_list_screen.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const GiftListScreen()),
    GoRoute(
      path: '/gif-detail',
      builder: (context, state) {
        final gif = state.extra as GiftsEntity;
        return GifDetailScreen(gif: gif);
      },
    ),
  ],
);
