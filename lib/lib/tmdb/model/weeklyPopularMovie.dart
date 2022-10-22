// To parse this JSON data, do
//
//     final dailyPopularMovie = dailyPopularMovieFromJson(jsonString);

import 'dart:convert';

import 'movie.dart';

WeeklyPopularMovie dailyPopularMovieFromJson(String str) => WeeklyPopularMovie.fromJson(json.decode(str));

String dailyPopularMovieToJson(WeeklyPopularMovie data) => json.encode(data.toJson());

class WeeklyPopularMovie {
  WeeklyPopularMovie({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  int page;
  List<Movie> results;
  int totalPages;
  int totalResults;

  factory WeeklyPopularMovie.fromJson(Map<String, dynamic> json) => WeeklyPopularMovie(
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
