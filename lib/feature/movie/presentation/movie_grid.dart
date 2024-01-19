import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/feature/movie/domain/movie.dart';
import 'package:flutter_example/router/router_app.dart';

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
          childAspectRatio: 0.68,
        ),
        itemBuilder: (context, index) {
          final movie = movies[index];
          return MovieCard(movie: movie);
        });
  }
}

class MovieCard extends StatelessWidget {
  const MovieCard({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 8.0,
        child: CachedNetworkImage(
          imageUrl: movie.posterPath,
          fit: BoxFit.cover,
        ),
      ),
      onTap: () {
        MovieDetailRoute($extra: movie).go(context);
      },
    );
  }
}
