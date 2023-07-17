import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_notes/constentes.dart';
import 'package:my_notes/models/note_model.dart';

part 'addnote_state.dart';

class AddnoteCubit extends Cubit<AddnoteState> {
  AddnoteCubit() : super( AddNoteInitial());

  addNote(NoteModel note) async{
    emit(AddNoteLoading());
  try {
    var noteBox = Hive.box<NoteModel>(notesBox);
    emit(AddNoteSuccess());
     await noteBox.add(note);
  } catch (e) {
    emit(AddNoteFailure(e.toString()));
  }
  }


}
