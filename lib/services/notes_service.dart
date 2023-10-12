import 'package:flutter_app_rest_apis/models/note_for_listing.dart';

class NotesService {
  List<NoteForListing> getNotesList() {
    return [
      NoteForListing(
          noteId: "1",
          createdDateTime: DateTime.now(),
          lastEditDateTime: DateTime.now(),
          noteTitle: "Note 1"),
      NoteForListing(
          noteId: "2",
          createdDateTime: DateTime.now(),
          lastEditDateTime: DateTime.now(),
          noteTitle: "Note 2"),
      NoteForListing(
          noteId: "3",
          createdDateTime: DateTime.now(),
          lastEditDateTime: DateTime.now(),
          noteTitle: "Note 3"),
    ];
  }
}
