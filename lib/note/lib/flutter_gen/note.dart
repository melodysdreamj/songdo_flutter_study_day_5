import 'package:flutter/material.dart';

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
        child: Image(image: AssetImage("assets/iu.jpeg"),)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /// function
        },
        child: Icon(Icons.sentiment_satisfied),
      ),
    );
  }
}

main() {
  runApp(MaterialApp(home: Note(),));
}