import 'package:flutter/material.dart';
import 'package:flutter_example/feature/home/domain/movie.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MovieDetailPage extends ConsumerWidget {
  const MovieDetailPage({
    required this.movie,
    super.key,
  });

  final Movie? movie;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MovieDetailPage'),
      ),
      body: Text('Movie id is ${movie?.title}'),
    );
  }
}
