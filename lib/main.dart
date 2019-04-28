import 'package:flutter/material.dart';

import './product_manager.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green, 
          accentColor: Colors.white
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Hello, World!'),
          ),
          body: ProductManager(),
        ));
  }
}
