import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen()
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ), onPressed: () {  },
        ),
        title: Text('First Screen'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ), onPressed: () {  },
          ),
        ],
      ),
      body: Center(
        child: Text('Hello world!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add),
      ),
    );
  }
}