import 'package:quiz_app/quiz/domain/entities/question.dart';

const List<Question> questions = [
  Question(
    "Questão 1",
    [
      Answer(answer: "Resposta 1"),
      Answer(answer: "Resposta 2"),
      Answer(
        answer: "Resposta 3",
        isCorrect: true,
      ),
    ],
  ),
  Question(
    "Questão 2",
    [
      Answer(answer: "Resposta 1"),
      Answer(
        answer: "Resposta 2",
        isCorrect: true,
      ),
      Answer(answer: "Resposta 3"),
    ],
  ),
  Question(
    "Questão 3",
    [
      Answer(
        answer: "Resposta 1",
        isCorrect: true,
      ),
      Answer(answer: "Resposta 2"),
      Answer(answer: "Resposta 3"),
    ],
  ),
];
