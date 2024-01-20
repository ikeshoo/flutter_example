import 'package:flutter/material.dart';
import 'package:flutter_example/feature/movie/presentation/movie_type_list.dart';
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
        children: [
          const MovieTypeList(),
        ],
      ),
    );
  }
}
