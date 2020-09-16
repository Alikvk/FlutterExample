import 'package:firstexample/frontend/firstpage.dart';
import 'package:firstexample/frontend/hello.dart';
import 'package:firstexample/frontend/scaffold.dart';
import 'package:flutter/material.dart';

import 'frontend/statelessstatefullwidget.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      '/': (context) => MyScaffoldWidget(),
      '/firstpage': (context) => FirstPage(
            title: 'FirstPage',
          ),
      '/statelessstatefullwidget': (context) => MyStateFullWidget(),
      '/hello': (context) => Hello(),
    },
  ));
}
