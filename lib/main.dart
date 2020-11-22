import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown[400],
          title: Center(
            child: Text(
              'Welcome to Grace Point 📖',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Great Vibes',
              ),
            ),
          ),
        ),
        backgroundColor: Colors.cyan[50],
        body: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.asset('images/bible_quote1.png'),
                ),
                Expanded(
                  child: Image.asset('images/bible_quote2.png'),
                ),
                Expanded(
                  child: Image.asset('images/bible_quote4.png'),
                ),
              ],
            ),
            SizedBox(
              height: 75,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FlatButton(
                  child: Text(
                    'Give',
                    style: TextStyle(
                        fontFamily: 'Great Vibes',
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  color: Colors.green,
                  onPressed: () {
                    print('Give us 10%');
                  },
                ),
                FlatButton(
                    child: Text(
                      'Enter',
                      style: TextStyle(
                        fontFamily: 'Great Vibes',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    color: Colors.brown[500],
                    onPressed: () {
                      print('Come, serve the Lord');
                    }),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.brown[500],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.home,
                color: Colors.white,
              ),
              Icon(
                Icons.search,
                color: Colors.white,
              ),
              Icon(
                Icons.payment,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
