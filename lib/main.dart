import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Wisata Bandung',
        theme: ThemeData(
          fontFamily: 'Oswald',
          primarySwatch: Colors.blue,
        ),
        home: DetailScreen());
  }
}

class FirstScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white,), onPressed: () {  },
        ),
        title: Text('First Screen'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white,), onPressed: () {  },
          )
        ],
      ),
      body: Center(
        child: 
        // Image.asset('images/img.png', width: 200, height: 200),
        // Text('New Font'),
        Text('Custom Font', style: TextStyle(fontFamily: 'Oswald', fontSize: 30,),)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add),
      ),
    );
  }
}

// class _FirstScreenState extends State<FirstScreen> {
//   bool lightOn = false;
 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Screen'),
//       ),
//       body: Switch(
//         value: lightOn,
//         onChanged: (bool value) {
//           setState(() {
//             lightOn = value;
//           });
 
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//               content: Text(lightOn ? 'Light On' : 'Light Off'),
//               duration: Duration(seconds: 1),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// class _FirstScreenState extends State<FirstScreen> {
//   TextEditingController _controller = TextEditingController();
 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Screen'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _controller,
//               decoration: InputDecoration(
//                 hintText: 'Write your name here...',
//                 labelText: 'Your Name',
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 showDialog(
//                     context: context,
//                     builder: (context) {
//                       return AlertDialog(
//                         content: Text('Hello, ${_controller.text}'),
//                       );
//                     });
//               },
//               child: Text('Submit'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
 
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }

// class _FirstScreenState extends State<FirstScreen> {
//   String _name = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Screen'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               decoration: InputDecoration(
//                 hintText: 'Write your name here...',
//                 labelText: 'Your Name',
//               ),
//               onChanged: (String value) {
//                 setState(() {
//                   _name = value;
//                 });
//               },
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 showDialog(
//                     context: context,
//                     builder: (context) {
//                       return AlertDialog(
//                         content: Text('Hello, $_name'),
//                       );
//                     });
//               },
//               child: Text('Submit'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }