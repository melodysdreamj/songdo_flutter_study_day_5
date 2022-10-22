// To parse this JSON data, do
//
//     final movieKeywords = movieKeywordsFromJson(jsonString);

import 'dart:convert';

MovieKeywords movieKeywordsFromJson(String str) => MovieKeywords.fromJson(json.decode(str));

String movieKeywordsToJson(MovieKeywords data) => json.encode(data.toJson());

class MovieKeywords {
  MovieKeywords({
    required this.id,
    required this.keywords,
  });

  int id;
  List<TMMovieKeyword> keywords;

  factory MovieKeywords.fromJson(Map<String, dynamic> json) => MovieKeywords(
    id: json["id"],
    keywords: List<TMMovieKeyword>.from(json["keywords"].map((x) => TMMovieKeyword.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "keywords": List<dynamic>.from(keywords.map((x) => x.toJson())),
  };
}

class TMMovieKeyword {
  TMMovieKeyword({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory TMMovieKeyword.fromJson(Map<String, dynamic> json) => TMMovieKeyword(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}
