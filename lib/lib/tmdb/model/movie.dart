import 'dart:convert';

class Movie {
  Movie({
    this.adult = false,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    this.originalTitle = "",
    this.overview = "",
    this.popularity = 100,
    required this.posterPath,
    required this.releaseDate,
    this.title = "",
    this.video = false,
    this.voteAverage = 3,
    this.voteCount = 0,
  });

  bool adult;
  String backdropPath;
  List<int> genreIds;
  int id;
  String originalTitle;
  String overview;
  double popularity;
  String posterPath;
  DateTime releaseDate;
  String title;
  bool video;
  double voteAverage;
  int voteCount;

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
    adult: json["adult"],
    backdropPath: json["backdrop_path"] ?? "",
    genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
    id: json["id"],
    originalTitle: json["original_title"],
    overview: json["overview"],
    popularity: json["popularity"].toDouble(),
    posterPath: json["poster_path"] ?? "",
    releaseDate: DateTime.parse(json["release_date"]),
    title: json["title"],
    video: json["video"],
    voteAverage: json["vote_average"].toDouble(),
    voteCount: json["vote_count"],
  );

  Map<String, dynamic> toJson() => {
    "adult": adult,
    "backdrop_path": backdropPath,
    "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
    "id": id,
    "original_title": originalTitle,
    "overview": overview,
    "popularity": popularity,
    "poster_path": posterPath,
    "release_date": "${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
    "title": title,
    "video": video,
    "vote_average": voteAverage,
    "vote_count": voteCount,
  };

  String fromListToString(List<String> list) {
    return jsonEncode(list);
  }

  List<String> fromStringToList(String fromDb) {
    //https://chowdera.com/2020/12/20201210190831310k.html
    List<String> list = [];
    if (fromDb != "") {
      list = (jsonDecode(fromDb) as List<dynamic>).cast<String>();
    }
    return list;
  }
}
