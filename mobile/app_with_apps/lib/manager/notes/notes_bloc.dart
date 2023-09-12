// ignore_for_file: invalid_use_of_visible_for_testing_member
import 'package:app_with_apps/constants/models/notes/folder_class.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'notes_event.dart';
part 'notes_state.dart';

class NotesBloc extends Bloc<NotesEvent, NotesState> {
  NotesBloc() : super(NotesInitial()) {
    on<GetNotesEvent>(_getNotes);
    on<DeleteFolderEvent>(_deleteFolder);
    on<DeleteNoteEvent>(_deleteNote);
    on<CreateNoteEvent>(_createNote);
    on<CreateFolderEvent>(_createFolder);
  }

  Future<void> _getNotes(GetNotesEvent event, Emitter<NotesState> state) async {
    //   try {
    //     await service.postUser(event.updateUser.toString());
    //     emit(UserMethodSucces());
    //     GetIt.I.get<ServiceData>().setName(event.updateUser.toString());
    //   } catch (error) {
    //     emit(UserWrong());
    //   }
    // }
    emit(NotesData(notes: []));
  }

  Future<void> _deleteFolder(
      DeleteFolderEvent event, Emitter<NotesState> state) async {}
  Future<void> _deleteNote(
      DeleteNoteEvent event, Emitter<NotesState> state) async {}
  Future<void> _createNote(
      CreateNoteEvent event, Emitter<NotesState> state) async {}
  Future<void> _createFolder(
      CreateFolderEvent event, Emitter<NotesState> state) async {}
}
