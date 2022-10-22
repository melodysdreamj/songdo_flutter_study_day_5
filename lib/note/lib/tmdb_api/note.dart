import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';

class Note extends StatefulWidget {
  const Note({Key? key}) : super(key: key);

  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        /// view
        child: Text('Note'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          /// function

          final tmdb = TMDB( //TMDB instance
            ApiKeys('f98cf7f4e9a3a1442e1c602b24c65788', 'apiReadAccessTokenv4'),//ApiKeys instance with your keys,
          );

          Map data = await tmdb.v3.movies.getPopular();

          var jsonData = jsonEncode(data);
          log(jsonData.toString());

        },
        child: Icon(Icons.sentiment_satisfied),
      ),
    );
  }
}

main() {
  runApp(MaterialApp(home: Note(),));
}