import 'package:firstexample/frontend/firstpage.dart';
import 'package:firstexample/frontend/hello.dart';
import 'package:firstexample/frontend/scaffold.dart';
import 'package:firstexample/frontend/statelessstatefullwidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    initialRoute: '/',
    routes: {
      "/": (context) => MyScaffoldWidget(),
      "/firstpage": (context) => FirstPage(
            title: 'First Page',
          ),
      "/hello": (context) => Hello(),
      "/statelessstatefullwidget": (context) => MyStatelessWidget(),
    },
  ));
}
