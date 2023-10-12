class NoteForListing {
  final String noteId;
  final String noteTitle;
  final DateTime createdDateTime;
  final DateTime lastEditDateTime;

  NoteForListing(
      {required this.noteId,
      required this.noteTitle,
      required this.createdDateTime,
      required this.lastEditDateTime});
}
