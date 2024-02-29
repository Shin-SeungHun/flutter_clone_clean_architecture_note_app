import 'package:flutter/material.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/model/note.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/repository/note_repository.dart';
import 'package:flutter_clone_clean_architecture_note_app/presentation/notes/notes_event.dart';
import 'package:flutter_clone_clean_architecture_note_app/presentation/notes/notes_state.dart';

class NotesViewModel extends ChangeNotifier {
  final NoteRepository _repository;

  NotesViewModel({
    required NoteRepository repository,
  }) : _repository = repository{
    _loadNotes();
  }

  NotesState _state = const NotesState(notes: []);

  NotesState get state => _state;
  Note? _recentlyDeletedNote;

  void onEvent({required NotesEvent event}) {
    event.when(
      loadNotes: _loadNotes,
      deleteNote: _deleteNote,
      restoreNote: _restoreNote,
    );
  }

  Future<void> _loadNotes() async {
    List<Note> notes = await _repository.getNotes();
    _state = state.copyWith(notes: notes);
    notifyListeners();
  }

  Future<void> _deleteNote(Note note) async {
    await _repository.deleteNote(note: note);
    await _loadNotes();
  }

  Future<void> _restoreNote() async {
    if (_recentlyDeletedNote != null) {
      await _repository.insertNote(note: _recentlyDeletedNote!);
      _recentlyDeletedNote = null;

      _loadNotes();
    }
  }
}
