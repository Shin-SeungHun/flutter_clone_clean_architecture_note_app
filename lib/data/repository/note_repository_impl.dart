import 'package:flutter_clone_clean_architecture_note_app/data/data_source/note_db_helper.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/model/note.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/repository/note_repository.dart';

class NoteRepositoryImpl implements NoteRepository {
  final NoteDbHelper db;

  const NoteRepositoryImpl({
    required this.db,
  });

  @override
  Future<void> deleteNote({required Note note}) async {
    await db.deleteNote(note: note);
  }

  @override
  Future<Note?> getNoteById({required int id}) async {
    return await db.getNoteById(id: id);
  }

  @override
  Future<List<Note>> getNotes() async {
    return await db.getNotes();
  }

  @override
  Future<void> insertNote({required Note note}) async {
    await db.insertNote(note: note);
  }

  @override
  Future<void> updateNote({required Note note}) async {
    await db.updateNote(note: note);
  }
}
