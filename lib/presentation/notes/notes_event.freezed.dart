// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notes_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotesEvent<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotes,
    required TResult Function(Note note) deleteNote,
    required TResult Function() restoreNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadNotes,
    TResult? Function(Note note)? deleteNote,
    TResult? Function()? restoreNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function()? restoreNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotes<T> value) loadNotes,
    required TResult Function(DeleteNotes<T> value) deleteNote,
    required TResult Function(RestoreNotes<T> value) restoreNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNotes<T> value)? loadNotes,
    TResult? Function(DeleteNotes<T> value)? deleteNote,
    TResult? Function(RestoreNotes<T> value)? restoreNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotes<T> value)? loadNotes,
    TResult Function(DeleteNotes<T> value)? deleteNote,
    TResult Function(RestoreNotes<T> value)? restoreNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesEventCopyWith<T, $Res> {
  factory $NotesEventCopyWith(
          NotesEvent<T> value, $Res Function(NotesEvent<T>) then) =
      _$NotesEventCopyWithImpl<T, $Res, NotesEvent<T>>;
}

/// @nodoc
class _$NotesEventCopyWithImpl<T, $Res, $Val extends NotesEvent<T>>
    implements $NotesEventCopyWith<T, $Res> {
  _$NotesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadNotesImplCopyWith<T, $Res> {
  factory _$$LoadNotesImplCopyWith(
          _$LoadNotesImpl<T> value, $Res Function(_$LoadNotesImpl<T>) then) =
      __$$LoadNotesImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadNotesImplCopyWithImpl<T, $Res>
    extends _$NotesEventCopyWithImpl<T, $Res, _$LoadNotesImpl<T>>
    implements _$$LoadNotesImplCopyWith<T, $Res> {
  __$$LoadNotesImplCopyWithImpl(
      _$LoadNotesImpl<T> _value, $Res Function(_$LoadNotesImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadNotesImpl<T> implements LoadNotes<T> {
  const _$LoadNotesImpl();

  @override
  String toString() {
    return 'NotesEvent<$T>.loadNotes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadNotesImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotes,
    required TResult Function(Note note) deleteNote,
    required TResult Function() restoreNote,
  }) {
    return loadNotes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadNotes,
    TResult? Function(Note note)? deleteNote,
    TResult? Function()? restoreNote,
  }) {
    return loadNotes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function()? restoreNote,
    required TResult orElse(),
  }) {
    if (loadNotes != null) {
      return loadNotes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotes<T> value) loadNotes,
    required TResult Function(DeleteNotes<T> value) deleteNote,
    required TResult Function(RestoreNotes<T> value) restoreNote,
  }) {
    return loadNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNotes<T> value)? loadNotes,
    TResult? Function(DeleteNotes<T> value)? deleteNote,
    TResult? Function(RestoreNotes<T> value)? restoreNote,
  }) {
    return loadNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotes<T> value)? loadNotes,
    TResult Function(DeleteNotes<T> value)? deleteNote,
    TResult Function(RestoreNotes<T> value)? restoreNote,
    required TResult orElse(),
  }) {
    if (loadNotes != null) {
      return loadNotes(this);
    }
    return orElse();
  }
}

abstract class LoadNotes<T> implements NotesEvent<T> {
  const factory LoadNotes() = _$LoadNotesImpl<T>;
}

/// @nodoc
abstract class _$$DeleteNotesImplCopyWith<T, $Res> {
  factory _$$DeleteNotesImplCopyWith(_$DeleteNotesImpl<T> value,
          $Res Function(_$DeleteNotesImpl<T>) then) =
      __$$DeleteNotesImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Note note});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$DeleteNotesImplCopyWithImpl<T, $Res>
    extends _$NotesEventCopyWithImpl<T, $Res, _$DeleteNotesImpl<T>>
    implements _$$DeleteNotesImplCopyWith<T, $Res> {
  __$$DeleteNotesImplCopyWithImpl(
      _$DeleteNotesImpl<T> _value, $Res Function(_$DeleteNotesImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$DeleteNotesImpl<T>(
      null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteCopyWith<$Res> get note {
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc

class _$DeleteNotesImpl<T> implements DeleteNotes<T> {
  const _$DeleteNotesImpl(this.note);

  @override
  final Note note;

  @override
  String toString() {
    return 'NotesEvent<$T>.deleteNote(note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteNotesImpl<T> &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteNotesImplCopyWith<T, _$DeleteNotesImpl<T>> get copyWith =>
      __$$DeleteNotesImplCopyWithImpl<T, _$DeleteNotesImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotes,
    required TResult Function(Note note) deleteNote,
    required TResult Function() restoreNote,
  }) {
    return deleteNote(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadNotes,
    TResult? Function(Note note)? deleteNote,
    TResult? Function()? restoreNote,
  }) {
    return deleteNote?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function()? restoreNote,
    required TResult orElse(),
  }) {
    if (deleteNote != null) {
      return deleteNote(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotes<T> value) loadNotes,
    required TResult Function(DeleteNotes<T> value) deleteNote,
    required TResult Function(RestoreNotes<T> value) restoreNote,
  }) {
    return deleteNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNotes<T> value)? loadNotes,
    TResult? Function(DeleteNotes<T> value)? deleteNote,
    TResult? Function(RestoreNotes<T> value)? restoreNote,
  }) {
    return deleteNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotes<T> value)? loadNotes,
    TResult Function(DeleteNotes<T> value)? deleteNote,
    TResult Function(RestoreNotes<T> value)? restoreNote,
    required TResult orElse(),
  }) {
    if (deleteNote != null) {
      return deleteNote(this);
    }
    return orElse();
  }
}

abstract class DeleteNotes<T> implements NotesEvent<T> {
  const factory DeleteNotes(final Note note) = _$DeleteNotesImpl<T>;

  Note get note;
  @JsonKey(ignore: true)
  _$$DeleteNotesImplCopyWith<T, _$DeleteNotesImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RestoreNotesImplCopyWith<T, $Res> {
  factory _$$RestoreNotesImplCopyWith(_$RestoreNotesImpl<T> value,
          $Res Function(_$RestoreNotesImpl<T>) then) =
      __$$RestoreNotesImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$RestoreNotesImplCopyWithImpl<T, $Res>
    extends _$NotesEventCopyWithImpl<T, $Res, _$RestoreNotesImpl<T>>
    implements _$$RestoreNotesImplCopyWith<T, $Res> {
  __$$RestoreNotesImplCopyWithImpl(
      _$RestoreNotesImpl<T> _value, $Res Function(_$RestoreNotesImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RestoreNotesImpl<T> implements RestoreNotes<T> {
  const _$RestoreNotesImpl();

  @override
  String toString() {
    return 'NotesEvent<$T>.restoreNote()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RestoreNotesImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotes,
    required TResult Function(Note note) deleteNote,
    required TResult Function() restoreNote,
  }) {
    return restoreNote();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadNotes,
    TResult? Function(Note note)? deleteNote,
    TResult? Function()? restoreNote,
  }) {
    return restoreNote?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function()? restoreNote,
    required TResult orElse(),
  }) {
    if (restoreNote != null) {
      return restoreNote();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotes<T> value) loadNotes,
    required TResult Function(DeleteNotes<T> value) deleteNote,
    required TResult Function(RestoreNotes<T> value) restoreNote,
  }) {
    return restoreNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNotes<T> value)? loadNotes,
    TResult? Function(DeleteNotes<T> value)? deleteNote,
    TResult? Function(RestoreNotes<T> value)? restoreNote,
  }) {
    return restoreNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotes<T> value)? loadNotes,
    TResult Function(DeleteNotes<T> value)? deleteNote,
    TResult Function(RestoreNotes<T> value)? restoreNote,
    required TResult orElse(),
  }) {
    if (restoreNote != null) {
      return restoreNote(this);
    }
    return orElse();
  }
}

abstract class RestoreNotes<T> implements NotesEvent<T> {
  const factory RestoreNotes() = _$RestoreNotesImpl<T>;
}
