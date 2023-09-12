// ignore_for_file: invalid_use_of_visible_for_testing_member
import 'package:app_with_apps/api/notes/service/api_service.dart';
import 'package:app_with_apps/constants/models/notes/folder_class.dart';
import 'package:app_with_apps/constants/models/notes/notes.dart';
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

  ServiceApiNotes service = ServiceApiNotes();

  Future<void> _getNotes(GetNotesEvent event, Emitter<NotesState> state) async {
    try {
      final data = await service.getData();
      emit(NotesData(notes: data));
    } catch (error) {
      emit(NotesError());
    }
  }

  Future<void> _deleteFolder(
      DeleteFolderEvent event, Emitter<NotesState> state) async {
    try {
      final int id = await service.deleteFolder(event.id);
      emit(DeleteSucess(id: id));
    } catch (error) {
      emit(NotesError());
    }
  }

  Future<void> _deleteNote(
      DeleteNoteEvent event, Emitter<NotesState> state) async {
    try {
      final int id = await service.deleteNote(event.id);
      emit(DeleteSucess(id: id));
    } catch (error) {
      emit(NotesError());
    }
  }

  Future<void> _createNote(
      CreateNoteEvent event, Emitter<NotesState> state) async {
    try {
      final int id = await service.createNote(event.title);
      emit(CreateSucess(id: id));
    } catch (error) {
      emit(NotesError());
    }
  }

  Future<void> _createFolder(
      CreateFolderEvent event, Emitter<NotesState> state) async {
    try {
      final int id = await service.createFolder(event.title);
      emit(CreateSucess(id: id));
    } catch (error) {
      emit(NotesError());
    }
  }
}
