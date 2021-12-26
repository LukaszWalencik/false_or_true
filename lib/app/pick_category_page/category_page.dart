import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Pick Category',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(primary: Colors.green),
                    onPressed: () {},
                    child: Text('History'),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(primary: Colors.red),
                    onPressed: () {},
                    child: Text('Sport'),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(primary: Colors.red),
                    onPressed: () {},
                    child: Text('Music'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(primary: Colors.red),
                    onPressed: () {},
                    child: Text('Animals'),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(primary: Colors.red),
                    onPressed: () {},
                    child: Text('Movies'),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(primary: Colors.red),
                    onPressed: () {},
                    child: Text('Geography'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
