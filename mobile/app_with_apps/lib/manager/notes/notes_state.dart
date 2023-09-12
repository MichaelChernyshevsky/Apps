part of 'notes_bloc.dart';

abstract class NotesState extends Equatable {}

class NotesInitial extends NotesState {
  @override
  List<Object?> get props => [];
}

class NotesCreateSucess extends NotesState {
  @override
  List<Object?> get props => [];
}

class NotesDeleteSucess extends NotesState {
  @override
  List<Object?> get props => [];
}

class NotesError extends NotesState {
  @override
  List<Object?> get props => [];
}

class NotesData extends NotesState {
  List<Folder> notes;
  NotesData({
    required this.notes,
  });
  @override
  List<Object?> get props => [notes];
}
