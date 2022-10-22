// To parse this JSON data, do
//
//     final tvGenres = tvGenresFromJson(jsonString);

import 'dart:convert';

import 'Genre.dart';

TvGenres tvGenresFromJson(String str) => TvGenres.fromJson(json.decode(str));

String tvGenresToJson(TvGenres data) => json.encode(data.toJson());

class TvGenres {
  TvGenres({
    required this.genres,
  });

  List<Genre> genres;

  factory TvGenres.fromJson(Map<String, dynamic> json) => TvGenres(
    genres: List<Genre>.from(json["genres"].map((x) => Genre.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "genres": List<dynamic>.from(genres.map((x) => x.toJson())),
  };
}

