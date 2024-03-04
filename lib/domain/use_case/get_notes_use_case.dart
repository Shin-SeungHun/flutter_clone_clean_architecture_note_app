import 'package:flutter_clone_clean_architecture_note_app/domain/model/note.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/repository/note_repository.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/util/note_order.dart';

class GetNotesUseCase {
  final NoteRepository _repository;

  const GetNotesUseCase({
    required NoteRepository repository,
  }) : _repository = repository;

  Future<List<Note>> call({required NoteOrder noteOrder}) async {
    List<Note> notes = await _repository.getNotes();

    noteOrder.when(
      title: (orderType) {
        orderType.when(ascending: () {
          notes.sort((a, b) => a.title.compareTo(b.title));
        }, descending: () {
          notes.sort((a, b) => -a.title.compareTo(b.title));
        });
      },
      date: (orderType) {
        orderType.when(
          ascending: () {
            notes.sort((a, b) => a.timestamp.compareTo(b.timestamp));
          },
          descending: () {
            notes.sort((a, b) => -a.timestamp.compareTo(b.timestamp));
          },
        );
      },
      color: (orderType) {
        orderType.when(
          ascending: () {
            notes.sort((a, b) => a.color.compareTo(b.color));
          },
          descending: () {
            notes.sort((a, b) => -a.color.compareTo(b.color));
          },
        );
      },
    );
    print('notelist $notes');
    return notes;
  }
}
