enum MovieListType {
  popular(
    title: 'Popular',
    imagePath: 'images/popular.jpg',
  ),
  topRated(
    title: 'Top Rated',
    imagePath: 'images/top_rated.jpg',
  ),
  upcoming(
    title: 'Up Coming',
    imagePath: 'images/up_coming.jpg',
  ),
  nowPlaying(
    title: 'Now Playing',
    imagePath: 'images/now_playing.jpg',
  ),
  ;

  const MovieListType({
    required this.title,
    required this.imagePath,
  });

  final String title;
  final String imagePath;
}
