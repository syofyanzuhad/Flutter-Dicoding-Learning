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
        // child: Text('Hello world!'),
        // child: Container(
        //   child: Text('Hi', style: TextStyle(fontSize: 40),),
        //   decoration: BoxDecoration(
        //     color: Colors.red,
        //     border: Border.all(color: Colors.green,width: 3),
        //     borderRadius: BorderRadius.circular(10),
        //   ),
        // )
        // child: Padding(
        //   padding: EdgeInsets.all(30),
        //   child: Text('Ini Padding'),
        // ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisAlignment: MainAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget> [
            IconButton(
              icon: Icon(Icons.share), 
              onPressed: () {  },
              color: Colors.grey,
            ),
            IconButton(
              icon: Icon(
              Icons.thumb_up),
              onPressed: () {  },
              color: Colors.blue,
            ),
            IconButton(
              icon: Icon(Icons.thumb_down),
              onPressed: () {  },
            ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add),
      ),
    );
  }
}