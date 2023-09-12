// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'notes_bloc.dart';

abstract class NotesState extends Equatable {}

class NotesInitial extends NotesState {
  @override
  List<Object?> get props => [];
}

class CreateSucess extends NotesState {
  int id;
  CreateSucess({
    required this.id,
  });

  @override
  List<Object?> get props => [id];
}

class DeleteSucess extends NotesState {
  int id;
  DeleteSucess({
    required this.id,
  });
  @override
  List<Object?> get props => [id];
}

class NotesError extends NotesState {
  @override
  List<Object?> get props => [];
}

class NotesData extends NotesState {
  Notes notes;
  NotesData({
    required this.notes,
  });
  @override
  List<Object?> get props => [notes];
}
