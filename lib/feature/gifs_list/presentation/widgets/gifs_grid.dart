import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/entities/gifs_entity.dart';
import 'package:test_task_chili_labs/feature/gifs_list/presentation/widgets/gif_tile.dart';

class GifsGrid extends StatelessWidget {
  final List<GifsEntity> gifs;
  final ScrollController? controller;
  final bool isLoadingMore;
  final ValueChanged<GifsEntity> onTap;

  const GifsGrid({
    super.key,
    required this.gifs,
    required this.onTap,
    this.controller,
    this.isLoadingMore = false,
  });

  @override
  Widget build(BuildContext context) {
    final itemCount = isLoadingMore ? gifs.length + 1 : gifs.length;
    final orientation = MediaQuery.of(context).orientation;
    final crossAxisCount = orientation == Orientation.portrait ? 2 : 4;

    return GridView.builder(
      controller: controller,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: 0.85.r,
        mainAxisSpacing: 8.r,
        crossAxisSpacing: 8.r,
      ),
      padding: EdgeInsets.all(12.r),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        if (index >= gifs.length) {
          return const Center(child: CircularProgressIndicator.adaptive());
        }
        final gif = gifs[index];
        return GifTile(gif: gif, onTap: () => onTap(gif));
      },
    );
  }
}
