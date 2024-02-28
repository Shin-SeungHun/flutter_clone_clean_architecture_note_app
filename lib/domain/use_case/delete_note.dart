import 'package:flutter_clone_clean_architecture_note_app/domain/model/note.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/repository/note_repository.dart';

class DeleteNote {
  final NoteRepository _repository;

  const DeleteNote({
    required NoteRepository repository,
  }) : _repository = repository;

  Future<List<Note>> call() async {
    List<Note> notes = await _repository.getNotes();
    return notes;
  }
}
