import 'package:flutter/material.dart';
import 'result.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            'My Quiz App',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: MainBody());
  }
}

class MainBody extends StatefulWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  // ignore: non_constant_identifier_names
  List Question = [
    '',
    '1. Karachi is the Capital of Pakistan.',
    '2. Punjab is the Province of pakistan.',
    '3. There are four Province of Pakistan.',
    '4. The largest mass balloon ascent ever occurred at the Bristol International Balloon Fiesta.',
    '5. A night glow event takes place on each evening of the festival.',
    '6. One company is responsible for all of the balloons at the festival.',
    '7. The festival benefits from being moved to an earlier time in the year.',
    '8. Different kinds of events have been introduced at the festival in the recent years.',
    '9. Since 2013 the festival has broken records every year.',
    '10. The decision to close the Clifton suspension bridge in 2003 was made by the local traffic police.'
  ];

  List answer = [
    true,
    true,
    true,
    true,
    true,
    true,
    false,
    false,
    false,
    false,
    false
  ];
  int questionNumber = 1;

  int correctanswer = 0;
  int wronganswer = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/pic.jpg'), fit: BoxFit.cover),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 200.0,
              child: Center(
                child: Text(
                  Question[questionNumber],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  // height: 50.0,
                  width: 100.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      fixedSize: const Size(300, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {
                      bool correct = answer[questionNumber];
                      if (correct == true) {
                        print('correct');
                        correctanswer++;
                      } else {
                        print('wrong');
                        wronganswer++;
                      }
                      setState(() {
                        if (questionNumber == 10) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Result(
                                  correctAns: correctanswer,
                                  wrongAns: wronganswer),
                            ),
                          );
                          questionNumber--;
                        }
                        questionNumber++;
                      });
                    },
                    child: Text(
                      'True',
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 30.0,
              ),
              Expanded(
                child: Container(
                  // height: 50.0,
                  width: 100.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      fixedSize: const Size(300, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {
                      bool correct = answer[questionNumber];
                      if (correct == false) {
                        print('correct');
                        correctanswer++;
                      } else {
                        print('wrong');
                        wronganswer++;
                      }

                      setState(() {
                        if (questionNumber == 10) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Result(
                                  correctAns: correctanswer,
                                  wrongAns: wronganswer),
                            ),
                          );
                          questionNumber--;
                        }
                        questionNumber++;
                      });
                    },
                    child: Text(
                      'False',
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
