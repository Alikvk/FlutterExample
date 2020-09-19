import 'package:flutter/material.dart';

class MyStatelessWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyPageState();
}

class MyPageState extends State<MyStatelessWidget> {
  int countNumber = 0;

  void numberPlus() {
    setState(() {
      countNumber++;
    });
  }

  void numberMinus() {
    setState(() {
      countNumber--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statefull - Stateless'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              child: Text('Sayı Arttır'),
              onPressed: numberPlus,
              color: Colors.red,
            ),
            Text(
              'Değişen Sayı $countNumber',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 15,
                color: countNumber >= 0
                    ? countNumber == 0 ? Colors.blue : Colors.green
                    : Colors.red,
              ),
            ),
            FlatButton(
              child: Text('Sayı Azalt'),
              onPressed: numberMinus,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
