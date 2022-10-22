// To parse this JSON data, do
//
//     final movieGenres = movieGenresFromJson(jsonString);

import 'dart:convert';

import 'Genre.dart';

MovieGenres movieGenresFromJson(String str) => MovieGenres.fromJson(json.decode(str));

String movieGenresToJson(MovieGenres data) => json.encode(data.toJson());

class MovieGenres {
  MovieGenres({
    required this.genres,
  });

  List<Genre> genres;

  factory MovieGenres.fromJson(Map<String, dynamic> json) => MovieGenres(
    genres: List<Genre>.from(json["genres"].map((x) => Genre.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "genres": List<dynamic>.from(genres.map((x) => x.toJson())),
  };
}
