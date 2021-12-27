import 'package:bordered_text/bordered_text.dart';
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/history.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Text(
                      'The Civil War was between 1861-1865?',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (answear == null) ...[
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.green),
                          onPressed: () {
                            setState(() {
                              answear = true;
                            });
                          },
                          child: Text(
                            'True',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
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
                          child: Text(
                            'False',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                    if (answear == true) ...{
                      Column(
                        children: [
                          BorderedText(
                            strokeWidth: 2.0,
                            child: Text(
                              'Correct answear',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            ),
                          ),
                          SizedBox(height: 30),
                          SizedBox(
                            height: 80,
                            width: 150,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.amber),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) =>
                                        FifthHistoryQuestionsPage()));
                              },
                              child: Text(
                                'Next question',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      )
                    } else if (answear == false) ...[
                      Column(
                        children: [
                          BorderedText(
                            strokeWidth: 2.0,
                            child: Text(
                              'Wrong answear',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                          ),
                          SizedBox(height: 30),
                          SizedBox(
                            height: 80,
                            width: 150,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.amber),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) =>
                                        FifthHistoryQuestionsPage()));
                              },
                              child: Text(
                                'Next question',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]
                    // ElevatedButton(onPressed: buttonDisable = true ?  null : setState() , child: Text('Next Question'))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
