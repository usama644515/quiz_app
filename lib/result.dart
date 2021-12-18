import 'package:flutter/material.dart';
import 'main.dart';

class Result extends StatefulWidget {
  final correctAns, wrongAns; // declare the pass variable

  const Result({Key? key, this.correctAns, this.wrongAns})
      : super(key: key); //use in key value

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreen[200],
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            // 'Result ${widget.correctAns}',
            'Result',
            style: TextStyle(fontSize: 25.0),
          ), // We can use pass varible by this way
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${widget.correctAns}/${widget.correctAns + widget.wrongAns}',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                // Text(
                //   'Your Correct Answers:',
                //   style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                // ),
                // Text(widget.correctAns.toString(),
                //     style:
                //         TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
                // Text('Your Wrong Answers:',
                //     style:
                //         TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
                // Text(widget.wrongAns.toString(),
                //     style:
                //         TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => (MyApp()),
                      ),
                    );
                  },
                  child: const Text('Re-Attempt',
                      style: TextStyle(fontSize: 20.0)),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      fixedSize: const Size(250, 70),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ],
            ),
          ),
        ));
  }
}
