import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Greeting App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Hello, World!',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text('Welcome to Flutter!'),
              Image.network(
                'https://flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png',
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.green,
                ),
                onPressed: () {
                  const snackBar = SnackBar(content: Text('Button Pressed!'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text('Press me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Text Styling App'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               const Text(
//                 'Flutter Text Styling',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const Text(
//                 'Experiment with text styles',
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontStyle: FontStyle.italic,
//                 ),
//               ),
//               const SizedBox(height: 20),
//               TextButton(
//                 onPressed: () {
//                   const snackBar = SnackBar(content: Text('You clicked the button!'));
//                   ScaffoldMessenger.of(context).showSnackBar(snackBar);
//                 },
//                 child: const Text('Click Me'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }