import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task_chili_labs/core/app_router/app_router.dart';
import 'package:test_task_chili_labs/core/app_router/coordinator.dart';
import 'package:test_task_chili_labs/core/failure/errors_overlay.dart';
import 'package:test_task_chili_labs/core/widgets/loading_indicator.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/params/gifs_search_params.dart';
import 'package:test_task_chili_labs/feature/gifs_list/presentation/bloc/gifs_bloc.dart';
import 'package:test_task_chili_labs/feature/gifs_list/presentation/widgets/gifs_grid.dart';

class GifListScreen extends StatefulWidget {
  const GifListScreen({super.key});

  @override
  State<GifListScreen> createState() => _GifListScreenState();
}

class _GifListScreenState extends State<GifListScreen> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  String _currentQuery = '';
  late final Coordinator _coordinator;

  @override
  void initState() {
    super.initState();
    _coordinator = Coordinator(appRouter);
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _onChanged(String value) {
    _currentQuery = value;
    context.read<GifsBloc>().add(
      GifsEvent.searchGifs(
        SearchGifsParams(query: value, limit: 10, offset: 0),
      ),
    );
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
    final position = _scrollController.position;
    if (position.pixels >= position.maxScrollExtent - 300) {
      context.read<GifsBloc>().add(const GifsEvent.loadMoreGifs());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(12.r), child: _buildTextField()),
            Expanded(
              child: BlocBuilder<GifsBloc, GifsState>(
                builder: (context, state) => _buildContent(state),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(GifsState state) {
    return switch (state) {
      GifsInitial() => Center(
        child: Text(
          'Start typing to search',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      GifsLoading() => const LoadingIndicator(size: 15),
      GifsError(:final failure) => ErrorsOverlay(
        failure: failure,
        onRetry: () {
          if (_currentQuery.isNotEmpty) {
            context.read<GifsBloc>().add(
              GifsEvent.searchGifs(
                SearchGifsParams(query: _currentQuery, limit: 10, offset: 0),
              ),
            );
          } else {
            context.read<GifsBloc>().add(const GifsEvent.loadMoreGifs());
          }
        },
      ),
      GifsLoaded(:final gifs) => GifsGrid(
        gifs: gifs,
        controller: _scrollController,
        isLoadingMore: false,
        onTap: (gif) => _coordinator.goToGifDetail(gif),
      ),
      GifsLoadingMore(:final gifs) => GifsGrid(
        gifs: gifs,
        controller: _scrollController,
        isLoadingMore: true,
        onTap: (gif) => _coordinator.goToGifDetail(gif),
      ),
    };
  }

  Widget _buildTextField() {
    return Platform.isAndroid
        ? TextField(
            controller: _searchController,
            onChanged: _onChanged,
            textInputAction: TextInputAction.search,
            decoration: const InputDecoration(
              hintText: 'Search GIFs',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
          )
        : CupertinoSearchTextField(
            controller: _searchController,
            onChanged: _onChanged,
            onSubmitted: (value) {
              context.read<GifsBloc>().add(
                GifsEvent.searchGifs(
                  SearchGifsParams(query: value, limit: 10, offset: 0),
                ),
              );
            },
          );
  }
}
