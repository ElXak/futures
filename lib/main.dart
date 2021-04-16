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
            String futureValue = await myTimedOutFuture()
                .timeout(Duration(seconds: 2), onTimeout: () {
              print('This future has timed out');
              return 'This is my timeout value';
            });
            print('Future completed: $futureValue');
          },
        ),
      ),
    );
  }

  Future<String> myTimedOutFuture() async {
    print('Future started');
    await Future.delayed(Duration(seconds: 5));
    return 'Future completed';
  }
}
