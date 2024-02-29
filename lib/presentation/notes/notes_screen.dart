import 'package:flutter/material.dart';
import 'package:flutter_clone_clean_architecture_note_app/presentation/add_edit_note/add_edit_note_screen.dart';
import 'package:flutter_clone_clean_architecture_note_app/presentation/notes/components/note_item.dart';
import 'package:flutter_clone_clean_architecture_note_app/presentation/notes/notes_event.dart';
import 'package:flutter_clone_clean_architecture_note_app/presentation/notes/notes_view_model.dart';
import 'package:provider/provider.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NotesViewModel viewModel = context.watch<NotesViewModel>();
    final state = viewModel.state;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your note',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.sort),
          ),
        ],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          bool? isSaved = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddEditNoteScreen()),
          );

          if (isSaved != null && isSaved) {
            viewModel.onEvent(event: const NotesEvent.loadNotes());
          }
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: state.notes
              .map((note) => NoteItem(
                    note: note,
                    onDeleteTap: () {
                      viewModel.onEvent(event: NotesEvent.deleteNote(note: note));

                      final snackBar = SnackBar(
                        content: const Text('노트가 삭제되었습니다.'),
                        action: SnackBarAction(
                          label: '취소',
                          onPressed: () => viewModel.onEvent(event: const NotesEvent.restoreNote()),
                        ),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                  ))
              .toList(),
        ),
      ),
    );
  }
}
