import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_edit_note_event.freezed.dart';

/// 화면에서 발생하는 모든 상황을 정의
@freezed
sealed class AddEditNoteEvent<T> with _$AddEditNoteEvent<T> {
  const factory AddEditNoteEvent.changeColor({required int color}) = ChangeColor;

  const factory AddEditNoteEvent.saveNote(int? id, {required String title, required String content}) = SaveNote;
}
