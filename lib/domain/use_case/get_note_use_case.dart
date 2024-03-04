import 'package:flutter_clone_clean_architecture_note_app/domain/model/note.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/repository/note_repository.dart';

class GetNoteUseCase {
  final NoteRepository _repository;

  const GetNoteUseCase({
    required NoteRepository repository,
  }) : _repository = repository;

  Future<Note?> call({required int id}) async {
    return await _repository.getNoteById(id: id);
  }
}
