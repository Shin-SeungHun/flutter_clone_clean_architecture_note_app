import 'package:flutter/material.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/model/note.dart';
import 'package:flutter_clone_clean_architecture_note_app/presentation/add_edit_note/add_edit_note_screen.dart';
import 'package:flutter_clone_clean_architecture_note_app/presentation/notes/components/note_item.dart';
import 'package:flutter_clone_clean_architecture_note_app/ui/colors.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your note',
          style: TextStyle(fontSize: 30),
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
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddEditNoteScreen()),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            NoteItem(
              note: Note(
                title: 'title',
                content: 'content',
                color: wisteria.value,
                timestamp: 1,
              ),
            ),
            NoteItem(
              note: Note(
                title: 'title',
                content: 'content',
                color: skyBlue.value,
                timestamp: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
