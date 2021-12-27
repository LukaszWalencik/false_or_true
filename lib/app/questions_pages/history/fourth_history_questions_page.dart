import 'package:false_or_true/app/questions_pages/history/fifth_history_questions_page.dart';
import 'package:flutter/material.dart';

class FourthHistoryQuestionsPage extends StatefulWidget {
  const FourthHistoryQuestionsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<FourthHistoryQuestionsPage> createState() =>
      _FourthHistoryQuestionsPage();
}

class _FourthHistoryQuestionsPage extends State<FourthHistoryQuestionsPage> {
  var answear = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Question 4/5'),
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Fourth Question',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (answear == null) ...[
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                      onPressed: () {
                        setState(() {
                          answear = true;
                        });
                      },
                      child: Text('True'),
                    ),
                  ),
                  SizedBox(width: 40),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      onPressed: () {
                        setState(() {
                          answear = false;
                        });
                      },
                      child: Text('False'),
                    ),
                  ),
                ],
                if (answear == true) ...{
                  Column(
                    children: [
                      Text(
                        'True',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => FifthHistoryQuestionsPage()));
                          },
                          child: Text('Next question')),
                    ],
                  )
                } else if (answear == false) ...[
                  Column(
                    children: [
                      Text(
                        'False',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => FifthHistoryQuestionsPage()));
                          },
                          child: Text('Next question')),
                    ],
                  ),
                ]
                // ElevatedButton(onPressed: buttonDisable = true ?  null : setState() , child: Text('Next Question'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
