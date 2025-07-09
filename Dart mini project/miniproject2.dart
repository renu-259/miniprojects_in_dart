import 'dart:io';

void main() {
  List<String> tasklist = [];

  while (true) {
    print("\n1. Add a task");
    print("2. Remove a task");
    print("3. Show all tasks");
    stdout.write("Enter your choice: ");

    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      print("Enter the task to add:");
      String? task = stdin.readLineSync();
      if (task != null && task.isNotEmpty) {
        tasklist.add(task);
        print("Task is added.");
      } else {
        print("Invalid task.");
      }
    } else if (choice == 2) {
      print("Enter the task to remove:");
      String? task = stdin.readLineSync();
      if (task != null && task.isNotEmpty) {
        if (tasklist.remove(task)) {
          print("Task is removed.");
        } else {
          print("Task not found.");
        }
      } else {
        print("Invalid task.");
      }
    } else if (choice == 3) {
      print("\nAll Tasks:");
      if (tasklist.isEmpty) {
        print("No tasks available.");
      } else {
        for (int i = 0; i < tasklist.length; i++) {
          print("${i + 1}. ${tasklist[i]}");
        }
      }
    } else {
      print("Task manager exited.");
      
    } 
  }
}
