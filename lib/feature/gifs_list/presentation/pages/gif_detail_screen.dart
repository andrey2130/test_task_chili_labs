import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/entities/gifs_entity.dart';

class GifDetailScreen extends StatelessWidget {
  final GifsEntity gif;

  const GifDetailScreen({super.key, required this.gif});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GIF Details')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [_buildGifImage(), _buildInfoSection(context)],
          ),
        ),
      ),
    );
  }

  Widget _buildGifImage() {
    return Hero(
      tag: gif.id,
      child: AspectRatio(
        aspectRatio: 1,
        child: Image.network(
          gif.originalUrl,
          fit: BoxFit.contain,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Center(
              child: CircularProgressIndicator.adaptive(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                    : null,
              ),
            );
          },
          errorBuilder: (context, error, stackTrace) {
            return const Center(
              child: Icon(Icons.error_outline, size: 64, color: Colors.red),
            );
          },
        ),
      ),
    );
  }

  Widget _buildInfoSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (gif.title.isNotEmpty) ...[
            Text(
              'Title:',
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            SelectableText(
              gif.title,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),
          ],
          if (gif.username.isNotEmpty) ...[
            Text(
              'Author:',
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Platform.isIOS
                    ? Icon(CupertinoIcons.person_solid, size: 20)
                    : Icon(Icons.person, size: 20),
                const SizedBox(width: 8),
                Text(
                  gif.username,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
