import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/model/note.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/repository/note_repository.dart';
import 'package:flutter_clone_clean_architecture_note_app/presentation/add_edit_note/add_edit_note_event.dart';
import 'package:flutter_clone_clean_architecture_note_app/presentation/add_edit_note/add_edit_note_ui_event.dart';
import 'package:flutter_clone_clean_architecture_note_app/ui/colors.dart';

class AddEditNoteViewModel extends ChangeNotifier {
  final NoteRepository _repository;
  final StreamController<AddEditNoteUiEvent> _eventController = StreamController<AddEditNoteUiEvent>.broadcast();

  Stream<AddEditNoteUiEvent> get eventController => _eventController.stream;

  AddEditNoteViewModel({
    required NoteRepository repository,
  }) : _repository = repository;

  int _color = roseBud.value;

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
    if (title.isEmpty || content.isEmpty) {
      _eventController.add(const AddEditNoteUiEvent.showSnackBar(message: '제목이나 내용이 비어 있습니다.'));
      return;
    }

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
          id: id,
          title: title,
          content: content,
          color: _color,
          timestamp: DateTime.now().millisecondsSinceEpoch,
        ),
      );
    }
    _eventController.add(const AddEditNoteUiEvent.saveNote());
  }
}
