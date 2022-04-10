import 'dart:math';
import 'package:emp1/Home.dart';
import 'package:emp1/HomePage.dart';
import 'package:emp1/aboutme.dart';
import 'package:emp1/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';

class SmartScreen extends StatefulWidget {
  const SmartScreen({Key? key}) : super(key: key);

  @override
  _SmartScreenState createState() => _SmartScreenState();
}

class _SmartScreenState extends State<SmartScreen>
    with SingleTickerProviderStateMixin{
  static final GlobalKey<ScaffoldState> _scaffoldKey =
  GlobalKey<ScaffoldState>();

  final int _selectedIndex = 0;
  final _pageOptions =[
    const MyHomePage(),
    const MyApp(),
    const MyPage(),
    const Story(),
  ];

  double value = 0 ;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.black,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          SafeArea(
              child: Container(
                width: 200,
                padding: const EdgeInsets.only(top: 25,bottom: 10,left: 18,right: 18),
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 170,
                      width: 170,
                      child: Image.asset('img/logo.png',fit: BoxFit.fill,),
                    ),
                    const SizedBox(height: 15),
                    const Text("وزارة الكهرباء",
                      style: TextStyle(
                          color:Colors.white,
                          fontFamily: 'cr',
                          fontSize:20
                      ),
                    ),
                    const SizedBox(height: 2),

                    const SizedBox(height: 50),
                    Expanded(
                        child: ListView(
                          children: [
                            ListTile(
                              onTap: (){},
                              leading: const Icon(Iconsax.home,color: Colors.white,size: 24),
                              title: const Text('حول',textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    color:Colors.white,
                                    fontFamily: 'cr',
                                    fontSize:16
                                ),
                              ),
                            ),
                            ListTile(
                              onTap: (){},
                              leading: const Icon(Iconsax.setting, color: Colors.white,size: 24),
                              title: const Text('الاعدادات',textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    color:Colors.white,
                                    fontFamily: 'cr',
                                    fontSize:16
                                ),
                              ),
                            ),
                            ListTile(
                              onTap: (){},
                              leading: const Icon(Iconsax.logout,color: Colors.white,size: 24),
                              title: const Text('خروج ',textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    color:Colors.white,
                                    fontFamily: 'cr',
                                    fontSize:16
                                ),
                              ),
                            ),

                          ],
                        )),
                    const SizedBox(height: 30),


                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                           Text("المديرية العامة لتوزيع كهرباء الجنوب",
                            style: TextStyle(
                                color:Colors.white70,
                                fontFamily: 'cr',
                                fontSize:8
                            ),
                          ),
                          Text("فرع البصرة",
                            style: TextStyle(
                                color:Colors.white70,
                                fontFamily: 'cr',
                                fontSize:8
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
              )
          ),

          TweenAnimationBuilder(
              tween: Tween<double>(begin: 0,end: value),
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn,
              builder: (_,double val,___){
                return(Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3,2,0.001)
                    ..setEntry(0,3, 200 *val)
                    ..rotateY((pi / 6 )* val),
                  child: Scaffold(
                    resizeToAvoidBottomInset: true,
                    backgroundColor: const Color(0xFF45413A),
                    key: _scaffoldKey,
                    drawer: Drawer(
                        child: ListView(
                          children: <Widget>[
                            const DrawerHeader(
                              child: Text("Smart Device"),
                              decoration: BoxDecoration(
                                color: Color(0xFFF7DB4C),
                              ),
                            ),
                            ListTile(
                              title: const Text("Home"),
                              onTap: () {},
                            ),
                            ListTile(
                              title: const Text("Profile"),
                              onTap: () {},
                            ),
                            ListTile(
                              title: const Text("Devices"),
                              onTap: () {},
                            ),
                            ListTile(
                              title: const Text("Settings"),
                              onTap: () {},
                            ),
                          ],
                        )),
                    body: Stack(
                      children: [
                        _pageOptions[_selectedIndex],
                        const Center(
                          child: Align(
                            alignment: Alignment(4.0, 1.0),
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 20),
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30.0),
                                ),

                              ),
                            ),

                          ),
                        ),

                      ],
                    ),
                  ),
                ));
              }),
          GestureDetector(
            onHorizontalDragUpdate: (e){
              if(e.delta.dx > 0){
                setState(() {
                  value =1;
                });
              }else{
                setState(() {
                  value = 0;
                });
              }
            },
          )
        ],
      ),
    );
  }
}
