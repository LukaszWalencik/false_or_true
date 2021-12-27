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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'You have all questions answeared',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => MainPage()));
                },
                child: Text('Back to main page')),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     if (answear == null) ...[
            //       SizedBox(
            //         height: 100,
            //         width: 100,
            //         child: ElevatedButton(
            //           style: ElevatedButton.styleFrom(primary: Colors.green),
            //           onPressed: () {
            //             setState(() {
            //               answear = true;
            //             });
            //           },
            //           child: Text('True'),
            //         ),
            //       ),
            //       SizedBox(width: 40),
            //       SizedBox(
            //         height: 100,
            //         width: 100,
            //         child: ElevatedButton(
            //           style: ElevatedButton.styleFrom(primary: Colors.red),
            //           onPressed: () {
            //             setState(() {
            //               answear = false;
            //             });
            //           },
            //           child: Text('False'),
            //         ),
            //       ),
            //     ],
            //     if (answear == true) ...{
            //       Column(
            //         children: [
            //           Text(
            //             'Prawda',
            //             style: TextStyle(
            //                 fontSize: 25,
            //                 fontWeight: FontWeight.bold,
            //                 color: Colors.white),
            //           ),
            //           SizedBox(height: 30),
            //           ElevatedButton(
            //               onPressed: () {
            //                 Navigator.of(context).push(
            //                     MaterialPageRoute(builder: (_) => MainPage()));
            //               },
            //               child: Text('Next question')),
            //         ],
            //       )
            //     } else if (answear == false) ...[
            //       Column(
            //         children: [
            //           Text(
            //             'False',
            //             style: TextStyle(
            //                 fontSize: 25,
            //                 fontWeight: FontWeight.bold,
            //                 color: Colors.white),
            //           ),
            //           SizedBox(height: 30),
            //           ElevatedButton(
            //               onPressed: () {
            //                 Navigator.of(context).push(
            //                     MaterialPageRoute(builder: (_) => MainPage()));
            //               },
            //               child: Text('Next question')),
            //         ],
            //       ),
            //     ]
            //     // ElevatedButton(onPressed: buttonDisable = true ?  null : setState() , child: Text('Next Question'))
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
