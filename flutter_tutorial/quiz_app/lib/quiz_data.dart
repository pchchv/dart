class Question {
  String questionText;
  List<String> options;
  int correctAnswerIndex;

  Question({
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
  });
}

List<Question> getQuestions() {
  return [
    Question(
      questionText: "What is the capital of France?",
      options: ["Berlin", "Madrid", "Paris", "Lisbon"],
      correctAnswerIndex: 2,
    ),
    Question(
      questionText: "Who wrote 'Hamlet'?",
      options: ["Charles Dickens", "William Shakespeare", "Mark Twain", "Jane Austen"],
      correctAnswerIndex: 1,
    ),
  ];
}
