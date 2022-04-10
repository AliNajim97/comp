import 'dart:async';
import 'package:emp1/SmartScreen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}
class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }
  @override
  void initState() {
    super.initState();
    startTimer();
  }
  startTimer() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }
  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => const AfterSplash()
    )
    );
  }
  initScreen(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipOval(
              child: Image.asset('img/logo.png',
                  fit: BoxFit.cover,
                  width: 250,
                  height: 250),
            ),
            Column(
              children: const [
                 Text("وزارة الكهرباء",
                  style: TextStyle(
                      color:Colors.black,
                      fontFamily: 'cr',
                      fontSize:22
                  ),
                ),
                 SizedBox(height: 10),
                 Text("المديرية العامة لتوزيع كهرباء الجنوب",
                  style: TextStyle(
                    color: Colors.black,
                      fontFamily: 'cr',
                      fontSize:18,
                  ),
                ),
                SizedBox(height: 60,),
                // Text(" تطبيق الشكاوى",
                //   style: TextStyle(
                //       color:Colors.black,
                //       fontFamily: 'cr',
                //       fontSize:20
                //   ),
                // ),
                SizedBox(height: 120),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 50.0)),
            const CircularProgressIndicator(
              backgroundColor: Colors.greenAccent,
              strokeWidth: 2,
            )
          ],
        ),
      ),
    );
  }
}

class AfterSplash extends StatelessWidget {
  const AfterSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SmartScreen();
  }
}
