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
          onPressed: () async {
            print('Future started');
            String futureValue = await myFuture();
            print(futureValue);
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
