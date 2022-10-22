class TMDBSpell {
  static TMDBSpell get to => TMDBSpell();

  final String _language = 'ko';
  final String _region = "KR";
  //
  // Future<List<Movie>> getMovieTopRated() async {
  //   var topRateMovies =
  //       await tmdb.v3.movies.getTopRated(language: _language, region: _region)
  //           as Map<String, dynamic>;
  //   return PopularMovie.fromJson(topRateMovies).results;
  // }
  //
  // Future<List<Movie>> getWeekTrending() async {
  //   var thisWeekTrend = await tmdb.v3.trending.getTrending(
  //       mediaType: MediaType.movie, timeWindow: TimeWindow.week)
  //       as Map<String, dynamic>;
  //   return WeeklyPopularMovie.fromJson(thisWeekTrend).results;
  // }
  //
  // Future<List<Movie>> getPopular() async {
  //   var popularMovies = await tmdb.v3.movies
  //       .getPopular(language: _language, region: _region) as Map<String, dynamic>;
  //   return PopularMovie.fromJson(popularMovies).results;
  // }
  //
  // Future<Map> queryMovies({String keyword = "매트릭스"}) async {
  //   return await tmdb.v3.search
  //       .queryMovies(keyword, language: _language, region: _region);
  // }
  //
  // String imageUrl({String? url}) {
  //   return tmdb.images.getUrl(url ?? "/tva2OlLELCagFynFibcefhn2D9i.jpg") ?? "";
  // }
}