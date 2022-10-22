import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class Note extends StatefulWidget {
  const Note({Key? key}) : super(key: key);

  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Note'),
      ),
      body: Center(

          /// view
          child: Column(
        children: [
          Text("hello world"),
          Text("hello world 2")
              .padding(all: 8)
              .backgroundColor(Colors.grey)
              .padding(all: 8),
        ],
      )),
    );
  }
}

main() {
  runApp(MaterialApp(
    home: Note(),
  ));
}
