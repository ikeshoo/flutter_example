import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/feature/home/domain/movie.dart';
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
          const Padding(
            padding: EdgeInsets.all(8.0),
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
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Colors.black,
                    ],
                    stops: [
                      0.25,
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
                      color: Colors.white,
                      fontSize: 32,
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

  Widget _releaseDate(DateTime releaseDate) {
    return Text(
      DateFormat('yyyy年MM月dd日').format(releaseDate).toString(),
      style: const TextStyle(fontSize: 16),
    );
  }
}
