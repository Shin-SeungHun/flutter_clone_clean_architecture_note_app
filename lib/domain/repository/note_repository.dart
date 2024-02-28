import 'package:flutter_clone_clean_architecture_note_app/domain/model/note.dart';

abstract interface class NoteRepository {
  Future<List<Note>> getNotes();

  Future<Note> getNoteById({required int id});

  Future<void> insertNote({required Note note});

  Future<void> updateNote({required Note note});

  Future<void> deleteNote({required Note note});
}
