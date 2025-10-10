import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/entities/gifs_entity.dart';

class GifTile extends StatelessWidget {
  final GifsEntity gif;
  final VoidCallback onTap;

  const GifTile({super.key, required this.gif, required this.onTap});

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
              gif.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white, fontSize: 12.sp),
            ),
          ),
          child: Hero(
            tag: gif.id,
            child: Image.network(
              gif.previewUrl,
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
