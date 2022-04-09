import 'package:emp1/Home.dart';
import 'package:emp1/aboutme.dart';
import 'package:emp1/main.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: Drawer(
        backgroundColor: Colors.purple,
        child: Container(
          color: Colors.purple,
          child: Padding(
            padding: const EdgeInsets.only(top: 20,bottom: 1,left: 0),
            child: Column(
              children: <Widget>[
                Image.asset('img/logo.png',fit: BoxFit.cover,),
                const SizedBox(height: 12),
                Card(
                  child: ListTile(title:
                  const Text('حول',textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color:Colors.black,
                        fontFamily: 'cr',
                        fontSize:18
                    ),
                  ),
                    trailing: const Icon(Icons.info_outline,size: 20,color: Colors.black,),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyPage()),);},),
                ),
                const SizedBox(height: 12),
                Card(
                  child: ListTile(title:
                  const Text('حول',textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color:Colors.black,
                        fontFamily: 'cr',
                        fontSize:18
                    ),
                  ),
                    trailing: const Icon(Icons.info_outline,size: 20,color: Colors.black,),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Story()),);},),
                ),
                const Card(
                  child: ListTile(title:
                  Text('عن التطبيق',textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color:Colors.black,
                        fontFamily: 'cr',
                        fontSize:18
                    ),
                  ),
                    trailing: Icon(Icons.touch_app,size: 20,color: Colors.black,),

                    ),
                ),
                Card(
                  child: ListTile(title:
                  const Text('خروج',textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color:Colors.black,
                        fontFamily: 'cr',
                        fontSize:18
                    ),
                  ),
                    trailing: const Icon(Icons.exit_to_app,size: 20,color: Colors.black,),
                    onTap: () {
                      Navigator.pop(context);
                    },),
                ),
              ],
            ),
          ),
        ),
        elevation: debugDefaultTargetPlatformOverride == TargetPlatform.iOS ? 0.5 : 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25,left: 12,right: 12),
        child: Expanded(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 5, ),
            margin: const EdgeInsets.symmetric(vertical: 35, ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).primaryColor,
                boxShadow: [
                  BoxShadow(
                      color: Theme.of(context).hintColor.withOpacity(0.2), offset: const Offset(0, 10), blurRadius: 20)
                ]),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:<Widget>[
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.asset('img/logo.png',fit: BoxFit.fill,),
                    ),

                    Column(
                      children: [
                        const Align(
                          alignment: Alignment.center,

                        ),

                        const Text("وزارة الكهرباء",
                          style: TextStyle(
                              color:Colors.black,
                              fontFamily: 'cr',
                              fontSize:22
                          ),
                        ),
                        const SizedBox(height: 10,),
                        const Text("المديرية العامة لتوزيع كهرباء الجنوب",
                          style: TextStyle(
                              color:Colors.black,
                              fontFamily: 'cr',
                              fontSize:16
                          ),
                        ),
                        const SizedBox(height: 40,),
                        const Text("قسم الشكاوى",
                          style: TextStyle(
                              color:Colors.purple,
                              fontFamily: 'cr',
                              fontSize:18
                          ),
                        ),
                        const SizedBox(height: 20,),

                        ButtonTheme(
                          minWidth: 165.0,
                          height: 165.0,
                          // ignore: deprecated_member_use
                          child: OutlineButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>   const MyHomePage()
                                ),);
                            },
                            child: Column(
                              children: const [
                                Icon(Iconsax.call_calling,
                                  color: Colors.greenAccent,
                                  size: 56,
                                ),
                                SizedBox(height: 5,),
                                Text("الاتصال بمركز الشكاوى",
                                  style: TextStyle(
                                      color:Colors.black45,
                                      fontFamily: 'cr',
                                      fontSize:12
                                  ),
                                ),
                              ],
                            ),
                            shape: const CircleBorder(),
                            borderSide: const BorderSide(
                              color: Colors.greenAccent,
                              style: BorderStyle.solid,
                              width: 2,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20,),

                        ButtonTheme(
                          minWidth: 165.0,
                          height: 165.0,
                          // ignore: deprecated_member_use
                          child: OutlineButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MyPage()),);
                            },
                            child: Column(
                              children: const [
                                Icon(Iconsax.edit,
                                  color: Colors.black38,
                                  size: 56,
                                ),
                                SizedBox(height: 5,),
                                Text("تسجيل شكوى",
                                  style: TextStyle(
                                      color:Colors.black45,
                                      fontFamily: 'cr',
                                      fontSize:14
                                  ),
                                ),
                              ],
                            ),
                            shape: const CircleBorder(),
                            borderSide: const BorderSide(
                              color: Colors.greenAccent,
                              style: BorderStyle.solid,
                              width: 2,
                            ),
                          ),
                        ),

                      ],
                    ),

                    const SizedBox(height: 185),



                  ]
              ),
            ),
          ),
        )
      ),

    );
  }
}


/*
Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.blueAccent,
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(1, 1), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                            colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.3), BlendMode.hardLight),
                            image: const AssetImage('img/logo.png'),
                          )
                      ),
                      child: Column(
                        children: const [
                          SizedBox(height: 25,),
                          Icon(Iconsax.call_calling),
                          SizedBox(height: 10),
                          Text("الاتصال بمركز الشكاوى",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                      width: 400,
                      height: 250.0,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(220.0)),
                        padding: const EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [Colors.white70, Colors.greenAccent],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(30.0)
                          ),
                          child: Container(
                            constraints: const BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Column(
                              children: const [
                                Icon(Iconsax.call_calling,
                                  color: Colors.greenAccent,
                                  size: 66,
                                ),
                                SizedBox(height: 5,),
                                Text("الاتصال بمركز الشكاوى",
                                  style: TextStyle(
                                      color:Colors.black45,
                                      fontFamily: 'cr',
                                      fontSize:14
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
 */