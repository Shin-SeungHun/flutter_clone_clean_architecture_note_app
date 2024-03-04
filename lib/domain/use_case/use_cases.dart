import 'package:flutter_clone_clean_architecture_note_app/domain/use_case/delete_note_use_case.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/use_case/get_note_use_case.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/use_case/get_notes_use_case.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/use_case/insert_note_use_case.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/use_case/update_note_use_case.dart';

class UseCases{
  final InsertNoteUseCase insertNoteUseCase;
  final DeleteNoteUseCase deleteNoteUseCase;
  final GetNoteUseCase getNoteUseCase;
  final GetNotesUseCase getNotesUseCase;
  final UpdateNoteUseCase updateNoteUseCase;

  const UseCases({
    required this.insertNoteUseCase,
    required this.deleteNoteUseCase,
    required this.getNoteUseCase,
    required this.getNotesUseCase,
    required this.updateNoteUseCase,
  });
}