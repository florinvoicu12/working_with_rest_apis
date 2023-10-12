import 'package:flutter/material.dart';
import 'package:flutter_app_rest_apis/models/note_for_listing.dart';
import 'package:flutter_app_rest_apis/services/notes_service.dart';
import 'package:flutter_app_rest_apis/views/note-modify.dart';
import 'package:flutter_app_rest_apis/views/note_delete.dart';
import 'package:get_it/get_it.dart';

class NoteList extends StatefulWidget {
  @override
  State<NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  NotesService get service => GetIt.instance<NotesService>();
  List<NoteForListing> notes = [];

  String formatDateTime(DateTime dateTime) {
    return "${dateTime.day}/${dateTime.month}/${dateTime.year}";
  }

  @override
  void initState() {
    notes = service.getNotesList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of notes"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => NoteModify())),
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
        separatorBuilder: (_, __) => Divider(
          height: 1,
          color: Colors.green,
        ),
        itemBuilder: (_, index) {
          return Dismissible(
            direction: DismissDirection.startToEnd,
            key: ValueKey(notes[index].noteId),
            onDismissed: (direction) {},
            confirmDismiss: (direction) async {
              final result = await showDialog(
                  context: context,
                  builder: (BuildContext context) => NoteDelete());
              print(result);
              return result;
            },
            background: Container(
              color: Colors.red,
              padding: EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
            ),
            child: ListTile(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => NoteModify(
                              noteId: notes[index].noteId,
                            ))),
                title: Text(
                  notes[index].noteTitle,
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                subtitle: Text(
                    "Last edited on ${formatDateTime(notes[index].lastEditDateTime)}")),
          );
        },
        itemCount: notes.length,
      ),
    );
  }
}
