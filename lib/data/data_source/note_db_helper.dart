import 'package:flutter_clone_clean_architecture_note_app/domain/model/note.dart';
import 'package:sqflite/sqflite.dart';

class NoteDbHelper {
  Database db;

  NoteDbHelper({
    required this.db,
  });

  Future<Note?> getNoteById({required int id}) async {
    // SELECT * FROM note WHERE id = 1
    final List<Map<String, dynamic>> maps = await db.query('note', where: 'id = ?', whereArgs: [id]);
    if (maps.isNotEmpty) {
      return Note.fromJson(maps.first);
    }
    return null;
  }

  Future<List<Note>> getNotes() async {
    final List<Map<String, dynamic>> maps = await db.query('note');
    return maps.map((e) => Note.fromJson(e)).toList();
  }

  Future<void> insertNote({required Note note}) async {
    await db.insert(
      'note',
      note.toJson(),
    );
  }

  Future<void> updateNote({required Note note}) async {
    await db.update(
      'note',
      note.toJson(),
      where: 'id = ?',
      whereArgs: [note.id],
    );
  }

  Future<void> deleteNote({required Note note}) async {
    await db.delete(
      'note',
      where: 'id = ?',
      whereArgs: [note.id],
    );
  }
}
