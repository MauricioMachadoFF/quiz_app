import 'package:flutter/material.dart';
import 'package:quiz_app/quiz/domain/entities/question.dart';
import 'package:quiz_app/quiz/presentation/mocked_information.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
        centerTitle: true,
      ),
      body: Column(
        children: const [
          _Quests(),
        ],
      ),
    );
  }
}

class _Quests extends StatefulWidget {
  const _Quests();

  @override
  State<_Quests> createState() => __QuestsState();
}

class __QuestsState extends State<_Quests> {
  //Each question will hold 3 answers
  int _questionIndex = 0;

  void _answerQuestion(Answer answer) {
    if (answer.isCorrect) {
      print("Acertou a pergunta");
    } else {
      print("Errou a pergunta");
    }
    if (_questionIndex < questions.length - 1) {
      setState(() {
        _questionIndex++;
      });
    }
  }

  Question get question => questions.elementAt(_questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          question.question,
        ),
        const SizedBox(height: 32),
        ElevatedButton(
          onPressed: () => _answerQuestion(question.answers[0]),
          child: Text(question.answers[0].answer),
        ),
        const SizedBox(height: 8),
        ElevatedButton(
          onPressed: () => _answerQuestion(question.answers[1]),
          child: Text(question.answers[1].answer),
        ),
        const SizedBox(height: 8),
        ElevatedButton(
          onPressed: () => _answerQuestion(question.answers[2]),
          child: Text(question.answers[2].answer),
        ),
      ],
    );
  }
}
