import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Constants.dart';
import 'package:notes_app/Models/note_model.dart';

part 'read_notes_state.dart';

class ReadNotesCubit extends Cubit<ReadNotesState> {
  ReadNotesCubit() : super(ReadNotesInitial());
  FetchAllNotes(NoteModel note) async {
    try {
      var notesBox = Hive.box<NoteModel>(kNoteBox);
      List<NoteModel> notes = notesBox.values.toList();
      emit(ReadNotesSuccess(notes: notes));
      await notesBox.add(note);
    } catch (e) {
      emit(ReadNotesFaliure(errorMessage: e.toString()));
    }
  }
}
