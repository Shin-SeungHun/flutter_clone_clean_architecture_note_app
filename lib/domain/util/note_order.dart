import 'package:flutter_clone_clean_architecture_note_app/domain/util/order_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_order.freezed.dart';

@freezed
sealed class NoteOrder with _$NoteOrder {
  const factory NoteOrder.title({required OrderType orderType}) = NoteOrderTitle;
  const factory NoteOrder.date({required OrderType orderType}) = NoteOrderDate;
  const factory NoteOrder.color({required OrderType orderType}) = NoteOrderColor;
}