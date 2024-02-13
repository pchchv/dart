/// 8. Create a simple to-do application that allows user to add, remove, and view their task.
import 'dart:io';

Map<String, bool> taskList = {};

void view() {
    taskList.forEach((todo, done) => print("$todo: $done"));
}

void add(String task) {
    taskList[task] = false;
}

bool remove(String task) {
    return taskList.remove(task)!;
}

bool done(String task) {
    return taskList.update(task, (value) => true);
}

String getTask() {
    stdout.write("Enter a task: ");
    return stdin.readLineSync()!;
}

void main() {
    String command = "";
    print("""Commands:
add    -  add new task
done   -  set task status - done
view   -  view the list of all tasks
stop   -  stop the program
remove -  remove task
""");
    
    while (command != "stop") {
        switch (command) {
            case "view":
            view();
            case "add":
            String task = getTask();
            add(task);
            case "remove":
            String task = getTask();
            remove(task);
            case "done":
            String task = getTask();
            done(task);
            default:
            print("invalid command");
        }

        stdout.write("Enter the command: ");
        command = stdin.readLineSync()!;
    }
}