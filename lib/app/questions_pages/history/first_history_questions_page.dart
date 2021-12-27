import 'package:false_or_true/app/pick_category_page/category_page.dart';
import 'package:false_or_true/app/questions_pages/history/seccond_history_questions_page.dart';
import 'package:flutter/material.dart';

class FirstHistoryQuestionsPage extends StatefulWidget {
  const FirstHistoryQuestionsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<FirstHistoryQuestionsPage> createState() =>
      _FirstHistoryQuestionsPageState();
}

class _FirstHistoryQuestionsPageState extends State<FirstHistoryQuestionsPage> {
  var answear = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Question 1/5'),
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Battle of Grunwald was in 1410?',
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
                        'Correct answear',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => SeccondHistoryQuestionsPage()));
                          },
                          child: Text('Next question')),
                    ],
                  )
                } else if (answear == false) ...[
                  Column(
                    children: [
                      Text(
                        'Wrong answear',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => SeccondHistoryQuestionsPage()));
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
