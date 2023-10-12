import 'package:flutter/material.dart';

class NoteModify extends StatelessWidget {
  final String? noteId;
  bool get isEditing => noteId != null;

  NoteModify({this.noteId});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(isEditing ? "Edit note" : "Create note")),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "Note title"),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(hintText: "Note content"),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              height: 35,
              child: ElevatedButton(
                onPressed: () {
                  if (isEditing) {
                  } else {}
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
