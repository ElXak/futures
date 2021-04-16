import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Future started');
            myFuture().then((value) {
              print(value);
              print('Future finished');
            });
            print('Future now here');
          },
        ),
      ),
    );
  }
}

Future<String> myFuture() async {
  await Future.delayed(Duration(seconds: 1));
  return 'This future is complete';
}
