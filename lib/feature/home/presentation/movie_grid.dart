import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/feature/home/domain/movie.dart';

class MovieGrid extends StatelessWidget {
  const MovieGrid({
    super.key,
    required this.movies,
  });
  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: movies.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
        ),
        itemBuilder: (context, index) {
          final movie = movies[index];
          return MovieCard(imageUrl: movie.posterPath);
        });
  }
}

class MovieCard extends StatelessWidget {
  const MovieCard({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(imageUrl: imageUrl);
  }
}
