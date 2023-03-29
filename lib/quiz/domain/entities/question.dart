class Question {
  const Question(this.question, this.answers);

  final String question;
  final List<Answer> answers;
}

class Answer {
  const Answer({
    required this.answer,
    this.isCorrect = false,
  });

  final String answer;
  final bool isCorrect;
}
