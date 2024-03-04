import 'package:flutter_clone_clean_architecture_note_app/data/data_source/note_db_helper.dart';
import 'package:flutter_clone_clean_architecture_note_app/data/repository/note_repository_impl.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/repository/note_repository.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/use_case/delete_note_use_case.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/use_case/get_note_use_case.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/use_case/get_notes_use_case.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/use_case/insert_note_use_case.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/use_case/update_note_use_case.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/use_case/use_cases.dart';
import 'package:flutter_clone_clean_architecture_note_app/presentation/add_edit_note/add_edit_note_view_model.dart';
import 'package:flutter_clone_clean_architecture_note_app/presentation/notes/notes_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:sqflite/sqflite.dart';

Future<List<SingleChildWidget>> getProviders() async {
  Database db = await openDatabase(
    'notes.db',
    version: 1,
    onCreate: (db, version) async {
      await db.execute(
          'CREATE TABLE note (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, content TEXT, color INTEGER, timestamp INTEGER)');
    },
  );

  NoteDbHelper noteDbHelper = NoteDbHelper(db: db);
  NoteRepository repository = NoteRepositoryImpl(db: noteDbHelper);
  UseCases useCases = UseCases(
    insertNoteUseCase: InsertNoteUseCase(repository: repository),
    deleteNoteUseCase: DeleteNoteUseCase(repository: repository),
    getNoteUseCase: GetNoteUseCase(repository: repository),
    getNotesUseCase: GetNotesUseCase(repository: repository),
    updateNoteUseCase: UpdateNoteUseCase(repository: repository),
  );
  NotesViewModel notesViewModel = NotesViewModel(useCases: useCases);
  AddEditNoteViewModel addEditNoteViewModel = AddEditNoteViewModel(repository: repository);

  return [
    ChangeNotifierProvider(create: (_) => notesViewModel),
    ChangeNotifierProvider(create: (_) => addEditNoteViewModel),
  ];
}
