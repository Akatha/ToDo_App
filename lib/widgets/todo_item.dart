import 'package:flutter/material.dart';
import 'package:todo_app/constrants/colors.dart';
import 'package:todo_app/model/todo.dart';

class TodoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChange;
  final onDeleteItem;
  const TodoItem({
    super.key,
    required this.todo,
    required this.onToDoChange,
    required this.onDeleteItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        onTap: () {
          onToDoChange(todo);
          // print('clicked on the todo item');
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 5),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            onPressed: () {
              onDeleteItem(todo.id);
              // print('clicked on the Delete');
            },
            icon: Icon(Icons.delete),
          ),
        ),
      ),
    );
  }
}
