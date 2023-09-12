// ignore_for_file: public_member_api_docs, sort_constructors_first
class Note {
  String title;
  String description;
  int id;
  Note({
    required this.title,
    required this.description,
    required this.id,
  });

  factory Note.create({
    required String title,
    required String description,
    required int id,
  }) {
    return Note(
      description: description,
      title: title,
      id: id,
    );
  }
}
