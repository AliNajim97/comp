import 'package:emp1/Home.dart';
import 'package:emp1/HomePage.dart';
import 'package:emp1/SmartScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'الشكاوى',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Colors.grey[600],
        primaryColor: Colors.white,
      ),
      home: const SmartScreen(),
    );
  }
}



























//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'الشكاوى',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: const MyHomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("الشكاوى"),
//       ),
//       body: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children:<Widget>[
//             Container(
//               decoration:BoxDecoration(
//                   borderRadius:BorderRadius.circular(10),
//                   color:Colors.green
//               ),
//               child: const Text("Geeks",style: TextStyle(color:Colors.white,fontSize:25),),
//             ),
//             Container(
//               decoration:BoxDecoration(
//                   borderRadius:BorderRadius.circular(10),
//                   color:Colors.green
//               ),
//               child: const Text("For",style: TextStyle(color:Colors.white,fontSize:25),),
//             ),
//             Container(
//               decoration:BoxDecoration(
//                   borderRadius:BorderRadius.circular(10),
//                   color:Colors.green
//               ),
//               child: const Text("Geeks",style: TextStyle(color:Colors.white,fontSize:25),),
//             )
//           ]
//       ),
//     );
//   }
// }