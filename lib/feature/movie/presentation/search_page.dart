import 'package:flutter/material.dart';
import 'package:flutter_example/feature/movie/presentation/movie_type_list.dart';
import 'package:flutter_example/feature/movie/presentation/search_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: MovieSerachBar(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: MovieTypeList(),
          ),
        ],
      ),
    );
  }
}
