class Question {
    String? question;
    String? answer;

    Question(String question, String answer) {
        this.question = question;
        this.answer = answer;
    }
}

class AllQuestions {
    List<Question> _questions = [];
    int _countQuestions = 0;

    void setQuestion(String q, String ans) {
        final question = Question(q, ans);
        _questions.add(question);
        _countQuestions++;
    }

    Question getQuestion(int num) {
        return _questions[num];
    }

    int getCount() {
        return _countQuestions;
    }
}