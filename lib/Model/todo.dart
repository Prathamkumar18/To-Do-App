// ignore_for_file: public_member_api_docs, sort_constructors_first
class Todo {
  int? id;
  bool isDone;
  String? text;

  Todo({
    required this.id,
    this.isDone = false,
    required this.text,
  });

  static List<Todo> itemlist() {
    return [];
  }
}
