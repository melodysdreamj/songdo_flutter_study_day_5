// To parse this JSON data, do
//
//     final popularMovie = popularMovieFromJson(jsonString);

import 'dart:convert';

import 'movie.dart';

PopularMovie popularMovieFromJson(String str) => PopularMovie.fromJson(json.decode(str));

String popularMovieToJson(PopularMovie data) => json.encode(data.toJson());

class PopularMovie {
  PopularMovie({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  int page;
  List<Movie> results;
  int totalPages;
  int totalResults;

  factory PopularMovie.fromJson(Map<String, dynamic> json) => PopularMovie(
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
