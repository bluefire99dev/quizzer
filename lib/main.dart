import 'package:flutter/material.dart';
import 'package:quizzer/component/quiz_brain.dart';

//abstraction---object
QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizePage(),
        ),
      ),
    );
  }
}

class QuizePage extends StatefulWidget {
  const QuizePage({super.key});

  @override
  State<QuizePage> createState() => _QuizePageState();
}

class _QuizePageState extends State<QuizePage> {
  //
  List<Widget> scorekeeper = [];
//   List<String> questions = [
//     '1.modi from pakistan',
//     '2.india is good country',
//     "3.1+2=4 "
//   ];
//   List<bool> answers = [false, true, true];

// //constaructoor
//   Quation q1 = Quation(q: 'hello', a: false);

  int questionnumber = 0;

//constructor
  // List<Quation> quationbank = [
  //   Quation(q: 'modi is india', a: false),
  //   Quation(q: 'moon is round', a: true),
  //   Quation(q: 'apple is sweet', a: true),
  // ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.10),
            child: Center(
              child: Text(
                quizBrain.quationbank[questionnumber].quationText,
                // questions[questionnumber],
                textAlign: TextAlign.center,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
                ),
                child: Text(
                  'true',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                onPressed: () {
                  bool correctAnswers =
                      quizBrain.quationbank[questionnumber].quationAnswer;
                  // correctAnswers = quizBrain
                  //     .quationbank[questionnumber].quationAnswer = true;

                  // bool correctAnswers = answers[questionnumber];
                  if (correctAnswers == true) {
                    print('right answer');
                  } else {
                    print('wrong answers');
                  }
                  setState(
                    () {
                      questionnumber++;
                      // print(questionnumber);
                      scorekeeper.add(
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      );
                    },
                  );
                }),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.red),
              ),
              child: Text(
                'False',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              onPressed: () {
                bool correctAnswers =
                    quizBrain.quationbank[questionnumber].quationAnswer;
                // bool correctAnswers = answers[questionnumber];
                if (correctAnswers == false) {
                  print('right answer');
                } else {
                  print('wrong answers');
                }
                setState(() {
                  questionnumber++;
                  // print(questionnumber);
                  scorekeeper.add(
                    Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                  );
                });
              },
            ),
          ),
        ),
        Row(
          children: scorekeeper,
        )
      ],
    );
  }
}
