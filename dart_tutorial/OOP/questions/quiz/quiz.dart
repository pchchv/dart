/// 7. Create a simple quiz application using oop that allows users to play and view their score.
import 'dart:io';
import 'dart:math';
import 'question.dart';

AllQuestions quiz = AllQuestions();

void addQuestion() {
    print("""commands:
    add  - add new question
    stop - end adding
    """);
    stdout.write("Enter the command: ");
    String command = stdin.readLineSync()!;
    while(command != "stop") {
        stdout.write("Enter a question: ");
        String q = stdin.readLineSync()!;
        stdout.write("Enter an answer: ");
        String ans = stdin.readLineSync()!;
        quiz.setQuestion(q, ans);

        stdout.write("Enter the command: ");
        command = stdin.readLineSync()!;
    }
}

void getQuiz() {
    Question q = quiz.getQuestion(Random().nextInt(quiz.getCount()-1));
    print(q.question);
    stdout.write("Answer: ");
    String ans = stdin.readLineSync()!;
    if (ans == q.answer) {
        print("Congratulations! The answer is right!");
    } else {
        print("Unfortunately, the answer is wrong=(");
    }
}

void main() {
    print("""commands:
    adder  -  add new questions
    getter -  get quiz
    quit   -  quit from app
    """);
    stdout.write("Enter the command: ");
    String command = stdin.readLineSync()!;

    while(command != "stop") {
        switch (command) {
            case "add":
            addQuestion();
        }

        stdout.write("Enter the command: ");
        command = stdin.readLineSync()!;
    }
}