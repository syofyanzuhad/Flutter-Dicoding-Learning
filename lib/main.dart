import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail_screen.dart';
import 'package:flutter_application_1/scroll_screen.dart';
import 'package:flutter_application_1/responsive_screen.dart';
import 'package:flutter_application_1/second_screen.dart';

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
        home: HomePage());
  }
}

class FirstScreen extends StatelessWidget {
  final String message = 'Hello from First Screen!';

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Pindah Screen'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondScreen(message);
            }));
          },
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
 
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Screen width: ${screenSize.width.toStringAsFixed(2)}',
            style: TextStyle(color: Colors.white, fontSize: 18),
            textAlign: TextAlign.center,
          ),
          Text(
            'Orientation: $orientation',
            style: TextStyle(color: Colors.white, fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ],
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