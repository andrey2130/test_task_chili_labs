import 'package:flutter/material.dart';
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
    return GridView.builder(
      controller: controller,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.85,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      padding: const EdgeInsets.all(12),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        if (index >= gifts.length) {
          return const _LoadingTile();
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
        borderRadius: BorderRadius.circular(12),
        child: GridTile(
          footer: Container(
            padding: const EdgeInsets.all(6),
            color: Colors.black54,
            child: Text(
              gift.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          child: Image.network(gift.previewUrl, fit: BoxFit.cover),
        ),
      ),
    );
  }
}

class _LoadingTile extends StatelessWidget {
  const _LoadingTile();

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator.adaptive());
  }
}
