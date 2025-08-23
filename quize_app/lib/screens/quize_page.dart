import 'package:flutter/material.dart';

class QuizePage extends StatefulWidget {
  const QuizePage({super.key});

  @override
  State<QuizePage> createState() => _QuizePageState();
}

class _QuizePageState extends State<QuizePage> {
  List<Map> allQuestions = [
    {
      'question': 'Who is the founder of Microsoft?',
      'options': ['Bill Gates', 'Steve Jobs', 'Elon Musk', 'Jeff Bezos'],
      'answer': 0
    },
    {
      'question': 'Who is the CEO of Tesla?',
      'options': ['Bill Gates', 'Steve Jobs', 'Elon Musk', 'Jeff Bezos'],
      'answer': 2
    },
    {
      'question': 'Who is the founder of SpaceX?',
      'options': ['Bill Gates', 'Steve Jobs', 'Elon Musk', 'Jeff Bezos'],
      'answer': 2
    },
    {
      'question': 'Who is the founder of Amazon?',
      'options': ['Bill Gates', 'Steve Jobs', 'Elon Musk', 'Jeff Bezos'],
      'answer': 3
    },
    {
      'question': 'Who is the founder of Twitter?',
      'options': ['Bill Gates', 'Steve Jobs', 'Elon Musk', 'Jack Dorsey'],
      'answer': 3
    },
    {
      'question': 'Who is the founder of Instagram?',
      'options': [
        'Mark Zuckerberg',
        'Kevin Systrom',
        'Jack Dorsey',
        'Evan Spiegel'
      ],
      'answer': 1
    },
    {
      'question': 'Who is the founder of Snapchat?',
      'options': [
        'Mark Zuckerberg',
        'Kevin Systrom',
        'Evan Spiegel',
        'Jack Dorsey'
      ],
      'answer': 2
    },
    {
      'question': 'Who is the founder of WhatsApp?',
      'options': ['Mark Zuckerberg', 'Brian Acton', 'Jan Koum', 'Jack Dorsey'],
      'answer': 2
    }
  ];
  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  bool isQuestionPage = true;
  WidgetStatePropertyAll<Color?> checkAnswer(int answerIndex) {
    if (selectedAnswerIndex != -1) {
      if (answerIndex == allQuestions[currentQuestionIndex]['answer']) {
        return const WidgetStatePropertyAll(Colors.green);
      } else if (selectedAnswerIndex == answerIndex) {
        return const WidgetStatePropertyAll(Colors.red);
      } else {
        return const WidgetStatePropertyAll(null);
      }
    } else {
      return const WidgetStatePropertyAll(null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return quizPage();
  }

  Scaffold quizPage() {
    if (isQuestionPage == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Quiz',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.orange,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(height: 10),
            Row(children: [
              Text(
                  "Question: ${currentQuestionIndex + 1} / ${allQuestions.length}",
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w600)),
            ]),
            const SizedBox(height: 10),
            SizedBox(
              width: 380,
              height: 50,
              child: Text(
                allQuestions[currentQuestionIndex]['question'],
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.purple),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: checkAnswer(0)),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 0;
                    setState(() {});
                  }
                },
                child: Text(allQuestions[currentQuestionIndex]['options'][0],
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500)),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: checkAnswer(1)),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 1;
                    setState(() {});
                  }
                },
                child: Text(allQuestions[currentQuestionIndex]['options'][1],
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500)),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: checkAnswer(2)),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 2;
                    setState(() {});
                  }
                },
                child: Text(allQuestions[currentQuestionIndex]['options'][2],
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500)),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: checkAnswer(3)),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 3;
                    setState(() {});
                  }
                },
                child: Text(allQuestions[currentQuestionIndex]['options'][3],
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500)),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (selectedAnswerIndex != -1) {
              if (currentQuestionIndex < allQuestions.length - 1) {
                currentQuestionIndex++;
                selectedAnswerIndex = -1;
              } else {
                isQuestionPage = false;
              }
              setState(() {});
            }
          },
          child: const Text(
            "Next",
            style: TextStyle(fontSize: 15, color: Colors.orange),
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            'Result Screen',
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Image.network(
                  'https://c8.alamy.com/comp/T17XE1/background-with-realistic-vector-3d-blank-golden-shiny-champion-cup-championship-trophy-sport-tournament-award-gold-winner-cup-and-victory-concept-T17XE1.jpg',
                  width: 500,
                  height: 500),
              const SizedBox(height: 30),
              const Text(
                'Congratulations',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      );
    }
  }
}
