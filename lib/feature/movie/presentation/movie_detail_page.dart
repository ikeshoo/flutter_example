import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/feature/movie/domain/movie.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class MovieDetailPage extends ConsumerWidget {
  const MovieDetailPage({
    required this.movie,
    super.key,
  });

  final Movie? movie;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: _detailBody(movie),
    );
  }

  Widget _detailBody(Movie? movie) {
    if (movie != null) {
      return ListView(
        children: [
          _posterImage(movie),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 4.0,
            ),
            child: _genreChips(movie.genres),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'ストーリー',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              movie.overview,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              '公開日',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: _releaseDate(movie.releaseDate),
          ),
        ],
      );
    } else {
      return const Center(child: Text('Failed to load movie...'));
    }
  }

  Widget _posterImage(Movie movie) {
    return SizedBox(
      height: 400,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CachedNetworkImage(
            imageUrl: movie.backdropPath,
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Colors.white.withOpacity(0.45),
                      Colors.white.withOpacity(0.9),
                    ],
                    stops: const [
                      0.5,
                      0.75,
                      1.0,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    movie.title,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CloseButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.black.withOpacity(0.24)),
                iconColor: MaterialStateProperty.all(Colors.white),
                iconSize: MaterialStateProperty.all(28),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _genreChips(List<MovieGenre> genres) {
    return Wrap(
      spacing: 8.0,
      children: genres
          .map(
            (genre) => Chip(
                label: Text(genre.name),
                backgroundColor: Colors.blueGrey.withOpacity(0.12),
                padding: const EdgeInsets.all(4.0),
                side: const BorderSide(
                  color: Colors.transparent,
                )),
          )
          .toList(),
    );
  }

  Widget _releaseDate(DateTime releaseDate) {
    return Text(
      DateFormat('yyyy年MM月dd日').format(releaseDate).toString(),
      style: const TextStyle(fontSize: 16),
    );
  }
}
