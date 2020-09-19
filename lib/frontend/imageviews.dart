import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resim Örnekleri'),
      ),
      body: ListView(
        children: [
          Image.asset('/assets/images/loading.gif'),
        ],
      ),
    );
  }
}
