import 'package:flutter_clone_clean_architecture_note_app/data/data_source/note_db.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/model/note.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/repository/note_repository.dart';

class NoteRepositoryImpl implements NoteRepository {
  final NoteDb db;
  const NoteRepositoryImpl({
    required this.db,
  });

  @override
  Future<void> deleteNote({required Note note}) {
    // TODO: implement deleteNote
    throw UnimplementedError();
  }

  @override
  Future<Note> getNoteById({required int id}) {
    // TODO: implement getNoteById
    throw UnimplementedError();
  }

  @override
  Future<List<Note>> getNotes() {
    // TODO: implement getNotes
    throw UnimplementedError();
  }

  @override
  Future<void> insertNote({required Note note}) {
    // TODO: implement insertNote
    throw UnimplementedError();
  }

  @override
  Future<void> updateNote({required Note note}) {
    // TODO: implement updateNote
    throw UnimplementedError();
  }
}
