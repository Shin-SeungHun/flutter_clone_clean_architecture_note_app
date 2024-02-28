import 'package:flutter/material.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/model/note.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/repository/note_repository.dart';
import 'package:flutter_clone_clean_architecture_note_app/presentation/add_edit_note/add_edit_note_event.dart';

class AddEditNoteViewModel extends ChangeNotifier {
  final NoteRepository _repository;

  AddEditNoteViewModel({
    required NoteRepository repository,
  }) : _repository = repository;

  int _color = Colors.orange.value;

  int get color => _color;

  void onEvent({required AddEditNoteEvent event}) {
    event.when(
      changeColor: _changeColor,
      saveNote: _saveNote,
    );
  }

  Future<void> _changeColor(int color) async {
    _color = color;
    notifyListeners();
  }

  Future<void> _saveNote(int? id, String title, String content) async {
    if (id == null) {
      await _repository.insertNote(
        note: Note(
          title: title,
          content: content,
          color: _color,
          timestamp: DateTime.now().millisecondsSinceEpoch,
        ),
      );
    } else {
      await _repository.updateNote(
        note: Note(
          title: title,
          content: content,
          color: color,
          timestamp: DateTime.now().millisecondsSinceEpoch,
        ),
      );
    }
  }
}
