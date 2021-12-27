import 'package:bordered_text/bordered_text.dart';
import 'package:false_or_true/main.dart';
import 'package:flutter/material.dart';

class HistoryEndQuestionsPage extends StatefulWidget {
  const HistoryEndQuestionsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<HistoryEndQuestionsPage> createState() => _HistoryEndQuestionsPage();
}

class _HistoryEndQuestionsPage extends State<HistoryEndQuestionsPage> {
  var answear = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Congratulations!!'),
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/question2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: BorderedText(
                  strokeWidth: 2.0,
                  child: Text(
                    'Well done!!\n You have all questions answered',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                        fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 80,
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.amber),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => MainPage()));
                  },
                  child: Text(
                    'Back to main page',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
