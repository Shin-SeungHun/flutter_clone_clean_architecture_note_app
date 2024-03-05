import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/model/note.dart';
import 'package:flutter_clone_clean_architecture_note_app/presentation/add_edit_note/add_edit_note_event.dart';
import 'package:flutter_clone_clean_architecture_note_app/presentation/add_edit_note/add_edit_note_view_model.dart';
import 'package:flutter_clone_clean_architecture_note_app/ui/colors.dart';
import 'package:provider/provider.dart';

class AddEditNoteScreen extends StatefulWidget {
  final Note? note;

  const AddEditNoteScreen({super.key, this.note});

  @override
  State<AddEditNoteScreen> createState() => _AddEditNoteScreenState();
}

class _AddEditNoteScreenState extends State<AddEditNoteScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();
  StreamSubscription? _streamSubscription;
  final List<Color> noteColors = [
    roseBud,
    primrose,
    wisteria,
    skyBlue,
    illusion,
  ];

  @override
  void initState() {
    super.initState();

    if (widget.note != null) {
      _titleController.text = widget.note!.title;
      _contentController.text = widget.note!.content;
    }

    Future.microtask(() {
      final AddEditNoteViewModel viewModel = context.read<AddEditNoteViewModel>();

      _streamSubscription = viewModel.eventController.listen((event) {
        event.when(saveNote: () {
          Navigator.pop(context, true);
        }, showSnackBar: (String message) {
          final snackBar = SnackBar(content: Text(message));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        });
      });
    });
  }

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    _streamSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AddEditNoteViewModel viewModel = context.watch<AddEditNoteViewModel>();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: ()  {
          print('id : ${widget.note?.id}');
          print('widget.note : ${widget.note}');
          viewModel.onEvent(
              event: AddEditNoteEvent.saveNote(
            widget.note?.id,
            title: _titleController.text,
            content: _contentController.text,
          ));
        },
        child: const Icon(Icons.save),
      ),
      body: AnimatedContainer(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 48),
        color: Color(viewModel.color),
        duration: const Duration(milliseconds: 500),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: noteColors
                  .map((color) => InkWell(
                        onTap: () {
                          viewModel.onEvent(event: AddEditNoteEvent.changeColor(color: color.value));
                        },
                        child: _buildBackgroundColor(
                          color: color,
                          selected: viewModel.color == color.value,
                        ),
                      ))
                  .toList(),
            ),
            TextField(
              controller: _titleController,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: darkGray),
              decoration: const InputDecoration(
                hintText: '제목을 입력하세요',
                border: InputBorder.none,
              ),
            ),
            TextField(
              controller: _contentController,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: darkGray),
              maxLines: null,
              decoration: const InputDecoration(
                hintText: '내용을 입력하세요',
                border: InputBorder.none,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundColor({
    required Color color,
    required bool selected,
  }) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 5.0,
              spreadRadius: 1.0,
            ),
          ],
          border: selected
              ? Border.all(
                  color: Colors.black,
                  width: 3.0,
                )
              : null),
    );
  }
}
