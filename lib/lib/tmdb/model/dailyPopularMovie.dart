// To parse this JSON data, do
//
//     final dailyPopularMovie = dailyPopularMovieFromJson(jsonString);

import 'dart:convert';

import 'movie.dart';

DailyPopularMovie dailyPopularMovieFromJson(String str) => DailyPopularMovie.fromJson(json.decode(str));

String dailyPopularMovieToJson(DailyPopularMovie data) => json.encode(data.toJson());

class DailyPopularMovie {
  DailyPopularMovie({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  int page;
  List<Movie> results;
  int totalPages;
  int totalResults;

  factory DailyPopularMovie.fromJson(Map<String, dynamic> json) => DailyPopularMovie(
    page: json["page"],
    results: List<Movie>.from(json["results"].map((x) => Movie.fromJson(x))),
    totalPages: json["total_pages"],
    totalResults: json["total_results"],
  );

  Map<String, dynamic> toJson() => {
    "page": page,
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
    "total_pages": totalPages,
    "total_results": totalResults,
  };
}
