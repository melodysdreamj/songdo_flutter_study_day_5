import 'dart:convert';

import 'movie.dart';

QueryMovies moviesFromJson(String str) => QueryMovies.fromJson(json.decode(str));

String moviesToJson(QueryMovies data) => json.encode(data.toJson());

class QueryMovies {
  QueryMovies({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  int page;
  List<Movie> results;
  int totalPages;
  int totalResults;

  factory QueryMovies.fromJson(Map<String, dynamic> json) => QueryMovies(
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

