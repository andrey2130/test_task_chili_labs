import 'package:go_router/go_router.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/entities/gifs_entity.dart';

class Coordinator {
  final GoRouter router;

  Coordinator(this.router);

  void goToGifDetail(GifsEntity gif) {
    router.push('/gif-detail', extra: gif);
  }

  void goBack() {
    router.pop();
  }
}
