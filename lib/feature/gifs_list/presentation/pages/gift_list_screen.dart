import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task_chili_labs/core/failure/errors_overlay.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/params/gifts_search_params.dart';
import 'package:test_task_chili_labs/feature/gifs_list/presentation/bloc/gifts_bloc.dart';
import 'package:test_task_chili_labs/feature/gifs_list/presentation/widgets/gifts_grid.dart';

class GiftListScreen extends StatefulWidget {
  const GiftListScreen({super.key});

  @override
  State<GiftListScreen> createState() => _GiftListScreenState();
}

class _GiftListScreenState extends State<GiftListScreen> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  String _currentQuery = '';

  @override
  void initState() {
    super.initState();
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
    context.read<GiftsBloc>().add(
      GiftsEvent.searchGifs(
        SearchGifsParams(query: value, limit: 10, offset: 0),
      ),
    );
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
    final position = _scrollController.position;
    if (position.pixels >= position.maxScrollExtent - 300) {
      context.read<GiftsBloc>().add(const GiftsEvent.loadMoreGifs());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: _buildTextField(),
            ),
            Expanded(
              child: BlocBuilder<GiftsBloc, GiftsState>(
                builder: (context, state) {
                  return switch (state) {
                    GiftsInitial() => const Text('Start typing to search'),
                    GiftsLoading() => const _CenteredLoader(),
                    GiftsError() => ErrorsOverlay(
                      failure: state.failure,
                      onRetry: () {
                        if (_currentQuery.isNotEmpty) {
                          context.read<GiftsBloc>().add(
                            GiftsEvent.searchGifs(
                              SearchGifsParams(
                                query: _currentQuery,
                                limit: 10,
                                offset: 0,
                              ),
                            ),
                          );
                        } else {
                          context.read<GiftsBloc>().add(
                            const GiftsEvent.loadMoreGifs(),
                          );
                        }
                      },
                    ),
                    GiftsLoaded() => GiftsGrid(
                      gifts: state.gifts,
                      controller: _scrollController,
                      isLoadingMore: false,
                      onTap: (g) {},
                    ),
                    GiftsLoadingMore() => GiftsGrid(
                      gifts: state.gifts,
                      controller: _scrollController,
                      isLoadingMore: true,
                      onTap: (g) {},
                    ),
                  };
                },
              ),
            ),
          ],
        ),
      ),
    );
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
              context.read<GiftsBloc>().add(
                GiftsEvent.searchGifs(
                  SearchGifsParams(query: value, limit: 10, offset: 0),
                ),
              );
            },
          );
  }
}

class _CenteredLoader extends StatelessWidget {
  const _CenteredLoader();

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator.adaptive());
  }
}
