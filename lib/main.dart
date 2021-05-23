import 'package:flutter/material.dart';

import './Forms/RegForm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form',
      home: HomePage(),
    );
  }
}
