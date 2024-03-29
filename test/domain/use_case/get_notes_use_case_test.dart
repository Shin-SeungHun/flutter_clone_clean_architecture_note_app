import 'package:flutter_clone_clean_architecture_note_app/domain/model/note.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/repository/note_repository.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/use_case/get_notes_use_case.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/util/note_order.dart';
import 'package:flutter_clone_clean_architecture_note_app/domain/util/order_type.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_notes_use_case_test.mocks.dart';

@GenerateMocks([NoteRepository])
void main() {
  test('정렬 기능이 잘 동작해야 한다.', () async {
    final repository = MockNoteRepository();
    final getNotes = GetNotesUseCase(repository: repository);

    // 동작 정의
    when(repository.getNotes()).thenAnswer((_) async => [
          const Note(title: 'title', content: 'content', color: 1, timestamp: 0),
          const Note(title: 'title2', content: 'content2', color: 2, timestamp: 2),
        ]);

    List<Note> result = await getNotes(noteOrder: const NoteOrder.date(orderType: OrderType.descending()));

    expect(result, isA<List<Note>>());
    expect(result.first.timestamp, 2);
    verify(repository.getNotes());

    result = await getNotes(noteOrder: const NoteOrder.date(orderType: OrderType.ascending()));
    expect(result.first.timestamp, 0);
    verify(repository.getNotes());

    result = await getNotes(noteOrder: const NoteOrder.title(orderType: OrderType.ascending()));
    expect(result.first.title, 'title');
    verify(repository.getNotes());

    result = await getNotes(noteOrder: const NoteOrder.title(orderType: OrderType.descending()));
    expect(result.first.title, 'title2');
    verify(repository.getNotes());


    result = await getNotes(noteOrder: const NoteOrder.color(orderType: OrderType.ascending()));
    expect(result.first.color, 1);
    verify(repository.getNotes());


    result = await getNotes(noteOrder: const NoteOrder.color(orderType: OrderType.descending()));
    expect(result.first.color, 2);
    verify(repository.getNotes());

    verifyNoMoreInteractions(repository);
  });
}
