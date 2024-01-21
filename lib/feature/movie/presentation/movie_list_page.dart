import 'package:flutter/material.dart';
import 'package:flutter_example/feature/movie/domain/movie_list_type.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MovieListPage extends ConsumerWidget {
  const MovieListPage({
    required this.type,
    Key? key,
  }) : super(key: key);

  final MovieListType type;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text(type.title)),
      body: const Center(
        child: Text('MovieListPage'),
      ),
    );
  }
}
