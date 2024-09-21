//import 'dart:ffi';
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//
//         title: Text(widget.title),
//       ),
//       body: Center(
//
//         child: Column(
//
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

// import 'package:exercise_one/quiz.dart';
// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(const Quiz());
// }



import 'package:exercise_one/tabs/emailTab.dart';
import 'package:exercise_one/tabs/homeTab.dart';
import 'package:exercise_one/tabs/searchTab.dart';
import 'package:exercise_one/tabs/settingTab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var myItem = [
    {
      "image":
          "https://gratisography.com/wp-content/uploads/2024/01/gratisography-cyber-kitty-800x525.jpg",
      "title": "Swag Cat",
      "image":
          "https://gratisography.com/wp-content/uploads/2024/01/gratisography-cyber-kitty-800x525.jpg",
      "title": "Smart Cat",
      "image":
          "https://gratisography.com/wp-content/uploads/2024/01/gratisography-cyber-kitty-800x525.jpg",
      "title": "Lazy Cat",
      "image":
          "https://gratisography.com/wp-content/uploads/2024/01/gratisography-cyber-kitty-800x525.jpg",
      "title": "Dumb Cat",
    }
  ];

  mySnackBar(context, message) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  myAlertDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
            child: AlertDialog(
              title: const Text('Alert !'),
              content: const Text('Do you want to delete ?'),
              actions: [
                TextButton(
                    onPressed: () {
                      mySnackBar(context, 'Delete success');
                    },
                    child: Text('Yes')),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('No')),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Home'),
            centerTitle: true,
            bottom: const TabBar(
              isScrollable: true,
                tabs: [
                  Tab(icon: Icon(Icons.home),text: 'Home'),
                  Tab(icon: Icon(Icons.search),text: 'Search' ),
                  Tab(icon: Icon(Icons.settings),text: 'Setting'),
                  Tab(icon: Icon(Icons.email),text: 'Email'),
                ]),
          ),
          body: const TabBarView(
            children: [
              HomeTab(),
              SearchTab(),
              SettingTab(),
              EmailTab()
            ],
          ),
        )
    );

//       Scaffold(
//         appBar: AppBar(
//           title: const Text('My App'),
//           titleSpacing: 5.0,
//           titleTextStyle: const TextStyle(
//             backgroundColor: Colors.black54,
//             fontSize: 10,
//             fontWeight: FontWeight.bold,
//           ),
//           centerTitle: true,
//         ),
//         drawer: Drawer(
//           child: ListView(
//             children: const [
//               DrawerHeader(
//                 padding: EdgeInsets.zero,
//                 child: UserAccountsDrawerHeader(
//                   accountName: Text('Abu Washi Arnob'),
//                   accountEmail: Text('abc@gmail.com'),
//                   currentAccountPicture: CircleAvatar(
//                     backgroundImage: NetworkImage(
//                       "https://unsplash.com/photos/a-man-holding-a-cell-phone-in-his-hand-gCTPav6smJE",
//                     ),
//                   ),
//                 ),
//               ),
//               ListTile(leading: Icon(Icons.home), title: Text('Home')),
//               ListTile(leading: Icon(Icons.message), title: Text('Message')),
//               ListTile(leading: Icon(Icons.person), title: Text('Profile')),
//             ],
//           ),
//         ),
//         body: GridView.builder(
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             crossAxisSpacing: 0,
//             childAspectRatio: 1.2,
//           ),
//           itemCount: myItem.length,
//           itemBuilder: (context, index) {
//             return GestureDetector(
//               onTap: () {
//                 mySnackBar(context, myItem[index]['title']);
//               },
//               child: Container(
//                 margin: EdgeInsets.all(10),
//                 width: double.infinity,
//                 height: 220,
//                 child: Image.network(
//                   myItem[index]['img']!,
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             );
//           },
//         ));
//   }
// }

//TextField and ElevatedButton
//       Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           const Padding(
//             padding: EdgeInsets.all(10),
//             child: TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'Name',
//               ),
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.all(10),
//             child: TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'Email',
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(10),
//             child: ElevatedButton(
//               onPressed: () {
//                 // Your button press logic here
//               },
//               style: ElevatedButton.styleFrom(
//                 padding: const EdgeInsets.symmetric(
//                     vertical: 15), // Adjust the vertical padding
//                 textStyle:
//                     const TextStyle(fontSize: 16), // Adjust the font size
//               ),
//               child: const Text('Submit'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

//ListView.Builder
// ListView.builder(
// itemCount: myItem.length,
// itemBuilder: (context, index) {
// return GestureDetector(
// onTap: (){mySnackBar(context, myItem[index]['title']);},
// child: Container(
// margin: EdgeInsets.all(10),
// width: double.infinity,
// height: 220,
// child: Image.network(myItem[index]['img']!, fit: BoxFit.fill,),
// ),
//
//
// );
// },
// )
