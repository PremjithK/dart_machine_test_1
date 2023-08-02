//todo list program
import 'dart:io';

void main(List<String> args) {
  List<String> todoList = [];

  do {
    //
    stdout.writeln("TODO LIST APP :");
    stdout.write('''
    PICK A FUNCTION (Type Option Number) :
    1 View List
    2 Add List Item
    3 Edit List Item
    4 Remove List Item

''');

    int? option = int.parse(stdin.readLineSync()!);
    switch (option) {
      // Viewing Case
      case 1:
        if (todoList.isEmpty) {
          stdout.writeln('''
Your List is Empty ...

''');
        } else {
          stdout.writeln('''
YOUR LIST: 
-------------------''');
          for (var item in todoList) {
            stdout.writeln("${todoList.indexOf(item)}. $item");
          }
          stdout.writeln("-------------------");
        }
        break;
      // Adding Case
      case 2:
        stdout.write("Describe the task : ");
        todoList.add(stdin.readLineSync()!);
        stdout.write("Task added!");
        break;
      // Edit Case
      case 3:
        stdout.write("Type Task Number to Edit:");
        stdout.writeln();
        int item_num = int.parse(stdin.readLineSync()!);

        stdout.write("Type The New Task:");
        stdout.writeln();
        todoList[item_num] = stdin.readLineSync()!;

        stdout.writeln("Modified Task No. $item_num");
        break;
      // Remove Case
      case 4:
        stdout.write("Type Task Number to Remove:");
        stdout.writeln();
        int item_num = int.parse(stdin.readLineSync()!);
        todoList.removeAt(item_num);
        stdout.writeln("Removed Task No. $item_num");
        break;
      default:
        stdout.write("Invalid Option");
        break;
    } //switch
  } while (true); // while
}//main
