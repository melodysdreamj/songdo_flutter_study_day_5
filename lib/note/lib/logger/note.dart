import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

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
          // if (kDebugMode) {
          //   print("hello");
          // }

          Logger logger = Logger(
            printer: PrettyPrinter(
              methodCount: 8,
              errorMethodCount: 8,
              lineLength: 120,
              colors: true,
              printEmojis: true,
              printTime: true,
            ),
          );

          logger.d("hello");
        },
        child: Icon(Icons.sentiment_satisfied),
      ),
    );
  }
}

main() {
  runApp(MaterialApp(home: Note(),));
}