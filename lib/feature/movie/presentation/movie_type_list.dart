import 'package:flutter/material.dart';
import 'package:flutter_example/feature/movie/domain/movie_list_type.dart';

class MovieTypeList extends StatelessWidget {
  const MovieTypeList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TypeCard(type: MovieListType.nowPlaying),
        TypeCard(type: MovieListType.popular),
        TypeCard(type: MovieListType.topRated),
        TypeCard(type: MovieListType.upcoming),
      ],
    );
  }
}

class TypeCard extends StatelessWidget {
  const TypeCard({
    Key? key,
    required this.type,
  }) : super(key: key);

  final MovieListType type;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 8.0,
        child: InkWell(
          child: Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(type.imagePath),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text(
                type.title,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
