import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Center(child: Text('The title of my app')),
            ),
            body: Column(
              children: const [
                Text('the question'),
                RaisedButton(
                  child: Text('Answer 1'),
                  onPressed: null,
                ),
                RaisedButton(
                  child: Text('Answer 1'),
                  onPressed: null,
                ),
                RaisedButton(
                  child: Text('Answer 1'),
                  onPressed: null,
                )
              ],
            )));
  }
}
