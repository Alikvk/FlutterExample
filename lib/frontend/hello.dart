import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var myTextChild = new Container(
      color: Colors.white,
      margin: const EdgeInsets.all(8),
      child: new Text(
        'Merhaba Flutter',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    );
    return Container(
      color: Colors.green,
      alignment: Alignment.center,
      child: new Container(
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(15.0),
        alignment: Alignment.center,
        color: Colors.blue,
        child: new Container(
          color: Colors.brown,
          alignment: Alignment.center,
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            textBaseline: TextBaseline.alphabetic,
            textDirection: TextDirection.ltr,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[myTextChild, myTextChild],
          ),
        ),
      ),
    );
  }
}
