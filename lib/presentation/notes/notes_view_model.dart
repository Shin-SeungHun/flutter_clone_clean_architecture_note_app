import 'package:flutter/material.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/repository/note_repository.dart';

class NotesViewModel extends ChangeNotifier{
  NoteRepository _repository;

  NotesViewModel({
    required NoteRepository repository,
  }) : _repository = repository;




}