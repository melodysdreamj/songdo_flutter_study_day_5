// To parse this JSON data, do
//
//     final movieRecommend = movieRecommendFromJson(jsonString);

import 'dart:convert';

import 'movie.dart';

MovieRecommend movieRecommendFromJson(String str) => MovieRecommend.fromJson(json.decode(str));

String movieRecommendToJson(MovieRecommend data) => json.encode(data.toJson());

class MovieRecommend {
  MovieRecommend({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  int page;
  List<Movie> results;
  int totalPages;
  int totalResults;

  factory MovieRecommend.fromJson(Map<String, dynamic> json) => MovieRecommend(
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
