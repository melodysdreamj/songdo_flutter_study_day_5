import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';

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
        child: Image(image: AssetImage(Assets.iu.path),)
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