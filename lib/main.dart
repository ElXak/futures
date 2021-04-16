import 'dart:math';

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
            runMultipleDownloads();
          },
        ),
      ),
    );
  }

  Future<bool> downloadFile(int id, int duration) async {
    await Future.delayed(Duration(seconds: duration));
    print('Download complete for $id');
    return true;
  }

  Future runMultipleDownloads() async {
    List<Future> futures = [];

    for (int i = 0; i < 10; i++) {
      futures.add(downloadFile(i, Random(i).nextInt(10)));
    }

    print('Start downloads');
    await Future.wait(futures);
    print('All downloads completed');
  }
}
