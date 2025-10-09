import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoadingIndicator extends StatelessWidget {
  final double? size;
  final Color? color;

  const LoadingIndicator({super.key, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Platform.isIOS
          ? CupertinoActivityIndicator(radius: size ?? 10, color: color)
          : SizedBox(
              width: (size ?? 20) * 2,
              height: (size ?? 20) * 2,
              child: CircularProgressIndicator(strokeWidth: 2, color: color),
            ),
    );
  }
}
