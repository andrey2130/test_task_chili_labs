import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/entities/gifts_entity.dart';

class GiftsGrid extends StatelessWidget {
  final List<GiftsEntity> gifts;
  final ScrollController? controller;
  final bool isLoadingMore;
  final ValueChanged<GiftsEntity> onTap;

  const GiftsGrid({
    super.key,
    required this.gifts,
    required this.onTap,
    this.controller,
    this.isLoadingMore = false,
  });

  @override
  Widget build(BuildContext context) {
    final itemCount = isLoadingMore ? gifts.length + 1 : gifts.length;
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
        if (index >= gifts.length) {
          return const Center(child: CircularProgressIndicator.adaptive());
        }
        final gift = gifts[index];
        return _GiftTile(gift: gift, onTap: () => onTap(gift));
      },
    );
  }
}

class _GiftTile extends StatelessWidget {
  final GiftsEntity gift;
  final VoidCallback onTap;

  const _GiftTile({required this.gift, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: GridTile(
          footer: Container(
            padding: EdgeInsets.all(6.r),
            color: Colors.black54,
            child: Text(
              gift.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white, fontSize: 12.sp),
            ),
          ),
          child: Hero(
            tag: gift.id,
            child: Image.network(
              gift.previewUrl,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[300],
                  child: const Icon(Icons.error_outline, color: Colors.red),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
