import 'package:flutter_clone_clean_architecture_note_app/domain/model/note.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/repository/note_repository.dart';

class UpdateNote {
  final NoteRepository _repository;

  const UpdateNote({
    required NoteRepository repository,
  }) : _repository = repository;

  Future<void> call({required Note note}) async {
    await _repository.updateNote(note: note);
  }


}
