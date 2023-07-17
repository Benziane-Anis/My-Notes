part of 'addnote_cubit.dart';

@immutable
abstract class AddnoteState {}

class AddNoteInitial extends AddnoteState {}

class AddNoteLoading extends AddnoteState {}

class AddNoteSuccess extends AddnoteState {}

class AddNoteFailure extends AddnoteState {
  final String error;

  AddNoteFailure(this.error);
}
