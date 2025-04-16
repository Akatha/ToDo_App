class ToDo {
  String ? id;
  String? todoText;
  bool isDone;


  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });


  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'morning Exercise', isDone: true),
      ToDo(id: '02', todoText: 'Brushing teeth', isDone: true),
      ToDo(id: '03', todoText: 'Washed Disces',),
      ToDo(id: '04', todoText: 'Cooked Food',),
      ToDo(id: '05', todoText: 'watched Mobile',),
      ToDo(id: '06', todoText: 'study 4 hours',),

    ];
  }
}