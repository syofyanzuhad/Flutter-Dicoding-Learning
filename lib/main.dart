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
        home: FirstScreen());
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
          ),
          onPressed: () {},
        ),
        title: Text('First Screen'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
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
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  'Sebuah Judul',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                Text('Lorem ipsum dolor sit amet'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[600],
                        ),
                        Icon(Icons.star,
                          color: Colors.yellow[600],
                        ),
                        Icon(Icons.star,
                          color: Colors.yellow[600],
                        ),
                        Icon(Icons.star,
                          color: Colors.yellow[600],
                        ),
                        Icon(Icons.star,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    Text('170 Reviews')
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.book,
                          color: Colors.green[200],
                        ),
                        Text('PREP:'),
                        Text('25 Min')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.timer,
                          color: Colors.green[200],
                        ),
                        Text('COOK:'),
                        Text('1 Hr')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.restaurant_menu_outlined,
                          color: Colors.green[200],
                        ),
                        Text('FEEDS:'),
                        Text('2-5 Min')
                      ],
                    )
                  ],
                ),
                
              ],
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
