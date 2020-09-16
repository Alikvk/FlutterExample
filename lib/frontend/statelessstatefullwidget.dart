import 'package:flutter/material.dart';

class MyStateFullWidget extends StatelessWidget {
  // StatelessWidget : Sadece 1 defa çalışmasını sağlayan Widget

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StateFulls Example',
      theme: ThemeData(
        primaryColor: Colors.amberAccent,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  //StatefulWidget : Dinamik olarak değien Widget
  @override
  State<StatefulWidget> createState() {
    return MyPageState();
  }
}

class MyPageState extends State<HomePage> {
  int count = 0;

  void countPlus() {
    setState(() {
      count++;
    });
  }

  void countMinus() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Statefull-Stateless Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              onPressed: countPlus,
              child: Text('Sayi Arttir'),
            ),
            Text(
              'Degisen Sayi $count',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 25,
                color: count >= 0
                    ? (count > 0 ? Colors.green : Colors.blue)
                    : Colors.red,
              ),
            ),
            FlatButton(
              onPressed: countMinus,
              child: Text('Sayi Azalt'),
            ),
          ],
        ),
      ),
    );
  }
}
