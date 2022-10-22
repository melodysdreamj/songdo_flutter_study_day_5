import 'package:flutter/material.dart';
import 'package:songdo_flutter_study_day_5/util/ready_app.dart';
import 'package:songdo_flutter_study_day_5/util/start_app.dart';

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
        onPressed: () {
          /// function
          tmdb.v3.movies.getPopular();

          logger.d("안녕하세요");
        },
        child: Icon(Icons.sentiment_satisfied),
      ),
    );
  }
}

main() {
  startApp(home: Note());
}