import 'package:flutter_clone_clean_architecture_note_app/domain/model/note.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/util/note_order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notes_event.freezed.dart';

/// 화면에서 발생하는 모든 상황을 정의
@freezed
sealed class NotesEvent<T> with _$NotesEvent<T> {
  const factory NotesEvent.loadNotes() = LoadNotes;
  const factory NotesEvent.deleteNote({required Note note}) = DeleteNotes;
  const factory NotesEvent.restoreNote() = RestoreNotes;
  const factory NotesEvent.changeOrder({required NoteOrder noteOrder}) = ChangeOrder;
  const factory NotesEvent.toggleOrderSection() = ToggleOrderSection;

}
