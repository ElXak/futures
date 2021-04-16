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
            String futureValue = await myFuture();
            print(futureValue);
          },
        ),
      ),
    );
  }
}

Future<String> myFuture() {
  return Future.value('This future is complete');
}
