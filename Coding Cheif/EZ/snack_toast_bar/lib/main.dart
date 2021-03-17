import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //우측 상단 빨간 띠를 없애
      title: 'AppBar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack_Bar'),
        centerTitle: true,
      ),
      body: MySnackBar(),
    );
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        ElevatedButton(
          child: Text('Show me'),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                'Data',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.teal,
              duration: Duration(milliseconds: 1000),
            ));
          },
        ),
        ElevatedButton(
          child: Text('Show me2'),
          onPressed: () {
            flutterToast();
          },
        ),
      ]),
    );
  }
}

void flutterToast() {
  Fluttertoast.showToast(
      msg: 'Toast',
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.redAccent,
      fontSize: 20.0,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT);
}
