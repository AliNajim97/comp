import 'package:emp1/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:simple_animations/simple_animations.dart';

class AAS extends StatefulWidget {
  const AAS({key}) : super(key: key);

  @override
  _AASState createState() => _AASState();
}

class _AASState extends State<AAS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // endDrawer: Drawer(
        //   backgroundColor: Colors.purple,
        //   child: Container(
        //     color: Colors.purple,
        //     child: Padding(
        //       padding: const EdgeInsets.only(top: 20,bottom: 1,left: 0),
        //       child: Column(
        //         children: <Widget>[
        //           Image.asset('img/logo.png',fit: BoxFit.cover,),
        //           const SizedBox(height: 12),
        //           Card(
        //             child: ListTile(title:
        //             const Text('حول',textDirection: TextDirection.rtl,
        //               style: TextStyle(
        //                   color:Colors.black,
        //                   fontFamily: 'cr',
        //                   fontSize:18
        //               ),
        //             ),
        //               trailing: const Icon(Icons.info_outline,size: 20,color: Colors.black,),
        //               onTap: () {
        //                 Navigator.push(
        //                   context,
        //                   MaterialPageRoute(
        //                       builder: (context) => const MyPage()),);},),
        //           ),
        //           const SizedBox(height: 12),
        //           Card(
        //             child: ListTile(title:
        //             const Text('حول',textDirection: TextDirection.rtl,
        //               style: TextStyle(
        //                   color:Colors.black,
        //                   fontFamily: 'cr',
        //                   fontSize:18
        //               ),
        //             ),
        //               trailing: const Icon(Icons.info_outline,size: 20,color: Colors.black,),
        //               onTap: () {
        //                 Navigator.push(
        //                   context,
        //                   MaterialPageRoute(
        //                       builder: (context) => const Story()),);},),
        //           ),
        //           const Card(
        //             child: ListTile(title:
        //             Text('عن التطبيق',textDirection: TextDirection.rtl,
        //               style: TextStyle(
        //                   color:Colors.black,
        //                   fontFamily: 'cr',
        //                   fontSize:18
        //               ),
        //             ),
        //               trailing: Icon(Icons.touch_app,size: 20,color: Colors.black,),
        //
        //             ),
        //           ),
        //           Card(
        //             child: ListTile(title:
        //             const Text('خروج',textDirection: TextDirection.rtl,
        //               style: TextStyle(
        //                   color:Colors.black,
        //                   fontFamily: 'cr',
        //                   fontSize:18
        //               ),
        //             ),
        //               trailing: const Icon(Icons.exit_to_app,size: 20,color: Colors.black,),
        //               onTap: () {
        //                 Navigator.pop(context);
        //               },),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        //   elevation: debugDefaultTargetPlatformOverride == TargetPlatform.iOS ? 0.5 : 0.0,
        // ),
        // appBar: AppBar(title: const Text("الشكاوى"),),
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [
                    Colors.white,
                    Colors.white70,
                  ]
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
                width: 150,
                child: Image.asset('img/logo.png',fit: BoxFit.fill,),
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
                    fontSize:18
                ),
              ),
              Expanded(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                      margin: const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Theme.of(context).primaryColor,
                          boxShadow: [
                            BoxShadow(
                                color: Theme.of(context).hintColor.withOpacity(0.2), offset: const Offset(0, 10), blurRadius: 20)
                          ]),

                      child: SingleChildScrollView(
                        child: Column(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Color.fromRGBO(225, 95, 27, .3),
                                          blurRadius: 20,
                                          offset: Offset(0, 10)
                                      )]
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    children: <Widget>[
                                      const Text("قسم الشكاوى",
                                        style: TextStyle(
                                            color:Colors.black,
                                            fontFamily: 'cr',
                                            fontSize:16
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: TextField(
                                          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
                                          keyboardType: TextInputType.name,
                                          decoration: InputDecoration(
                                            hintText: 'ادخل اسمك',
                                            hintStyle: TextStyle(color: Theme.of(context).colorScheme.secondary),

                                            enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary.withOpacity(0.2))),
                                            focusedBorder:
                                            UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)),
                                            prefixIcon: Icon(
                                              Icons.add,
                                              color: Theme.of(context).colorScheme.secondary,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: TextField(
                                          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
                                          keyboardType: TextInputType.phone,
                                          decoration: InputDecoration(
                                            hintText: 'رقم الهاتف',
                                            hintStyle: TextStyle(color: Theme.of(context).colorScheme.secondary),

                                            enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary.withOpacity(0.2))),
                                            focusedBorder:
                                            UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)),
                                            prefixIcon: Icon(
                                              Icons.phone,
                                              color: Theme.of(context).colorScheme.secondary,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: TextField(
                                          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            hintText: 'رقم المحولة',
                                            hintStyle: TextStyle(color: Theme.of(context).colorScheme.secondary),

                                            enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary.withOpacity(0.2))),
                                            focusedBorder:
                                            UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)),
                                            prefixIcon: Icon(
                                              Icons.add_circle_outlined,
                                              color: Theme.of(context).colorScheme.secondary,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: TextField(
                                          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                            hintText: 'العنوان',
                                            hintStyle: TextStyle(color: Theme.of(context).colorScheme.secondary),

                                            enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary.withOpacity(0.2))),
                                            focusedBorder:
                                            UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)),
                                            prefixIcon: Icon(
                                              Icons.add_location_sharp,
                                              color: Theme.of(context).colorScheme.secondary,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: TextField(
                                          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                            hintText: 'اقرب نقطة دالة',
                                            hintStyle: TextStyle(color: Theme.of(context).colorScheme.secondary),

                                            enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary.withOpacity(0.2))),
                                            focusedBorder:
                                            UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)),
                                            prefixIcon: Icon(
                                              Icons.add_location,
                                              color: Theme.of(context).colorScheme.secondary,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: TextField(
                                          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                            hintText: 'من فضلك اكتب طلبك',
                                            hintStyle: TextStyle(color: Theme.of(context).colorScheme.secondary),

                                            enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary.withOpacity(0.2))),
                                            focusedBorder:
                                            UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)),
                                            prefixIcon: Icon(
                                              Icons.note_add,
                                              color: Theme.of(context).colorScheme.secondary,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      OutlinedButton(
                                        onPressed: () {},
                                        child: const Text('ارسال',
                                          style: TextStyle(
                                              color:Colors.white,
                                              fontFamily: 'cr',
                                              fontSize:14
                                          ),
                                        ),
                                        style: OutlinedButton.styleFrom(
                                            primary: Colors.black,
                                            backgroundColor: Colors.purple,
                                            padding: const EdgeInsets.all(25)),

                                      ),
                                      ButtonTheme(
                                        minWidth: 100.0,
                                        height: 50.0,
                                        child:OutlineButton.icon(
                                          onPressed: () {
                                            print("out");
                                          },
                                          focusColor: Colors.purple,
                                          textColor: Colors.red,
                                          disabledBorderColor: Colors.red,
                                          highlightedBorderColor: Colors.red,
                                          splashColor: Colors.blueAccent,
                                          borderSide: const BorderSide(
                                            color: Colors.purple,
                                          ),

                                          shape: ContinuousRectangleBorder(
                                            borderRadius: BorderRadius.circular(26.0),

                                          ),
                                          label: const Text(
                                            'ارسال',
                                            style: TextStyle(
                                                color:Colors.purple,
                                                fontFamily: 'cr',
                                                fontSize:14
                                            ),
                                          ),
                                          icon: const Icon(
                                            Icons.send,
                                            size: 18.0,
                                          ),

                                        ),
                                      ),

                                      const SizedBox(height: 10),

                                      OutlinedButton.icon(
                                        style: OutlinedButton.styleFrom(
                                            fixedSize: const Size(10, 40),
                                            alignment: const AlignmentDirectional(-1.0, 0),
                                            side: const BorderSide(
                                                width: 1,
                                                color: Colors.black38,
                                                style: BorderStyle.solid)),
                                        onPressed: () {},
                                        label: const Text("Login"),
                                        icon: const Icon(Icons.facebook),
                                      ),
                                      SizedBox(
                                        width: 400.0,
                                        height: 50.0,
                                        child: OutlineButton(
                                          child: const Text(
                                            'ارسال',
                                            style: TextStyle(
                                                color:Colors.purple,
                                                fontFamily: 'cr',
                                                fontSize:14
                                            ),
                                          ),
                                          borderSide: const BorderSide(
                                            color: Colors.purple,
                                            style: BorderStyle.solid,
                                            width: 1.8,
                                          ),
                                          onPressed: () {},
                                        ),
                                      ),
                                      ButtonTheme(
                                        minWidth: 100.0,
                                        height: 50.0,
                                        child: OutlineButton(
                                          child: const Text(
                                            'ارسال',
                                            style: TextStyle(
                                                color:Colors.purple,
                                                fontFamily: 'cr',
                                                fontSize:14
                                            ),
                                          ),
                                          borderSide: const BorderSide(
                                            color: Colors.purple,
                                            style: BorderStyle.solid,
                                            width: 1.8,
                                          ),
                                          onPressed: () {},
                                        ),
                                      ),
                                      ButtonTheme(
                                        minWidth: 200.0,
                                        height: 50.0,
                                        child: OutlineButton(
                                          onPressed: () {},
                                          child: const Icon(
                                            Icons.screen_lock_portrait,
                                            color: Colors.redAccent,
                                            size: 10.0,
                                          ),
                                          shape: const CircleBorder(),
                                          borderSide: const BorderSide(
                                            color: Colors.purple,
                                            style: BorderStyle.solid,
                                            width: 2,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'هل لديك مشكلة في تسجيل شكوى ؟',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontFamily: 'cr',
                                            fontSize:12
                                        ),
                                      ),



                                    ],
                                  ),
                                ),
                              ),
                            ]),


                      ))),



            ],
          ),

        )

    );
  }
}








/*
SizedBox(
              height: 150,
              width: 150,
              child: Image.asset('img/logo.png',fit: BoxFit.fill,),
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
                fontSize:18
            ),
          ),
              const SizedBox(height: 5),
              Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            margin: const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).primaryColor,
                boxShadow: [
                  BoxShadow(
                      color: Theme.of(context).hintColor.withOpacity(0.2), offset: const Offset(0, 10), blurRadius: 20)
                ]),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 15),
                const Text("قسم الشكاوى",
                  style: TextStyle(
                      color:Colors.black,
                      fontFamily: 'cr',
                      fontSize:16
                  ),
                ),
                // Text('Sign In', style: Theme.of(context).textTheme.headline4),
                const SizedBox(height: 20),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
                    style: TextStyle(color: Theme.of(context).colorScheme.secondary),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: 'ادخل اسمك',
                      hintStyle: TextStyle(color: Theme.of(context).colorScheme.secondary),

                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary.withOpacity(0.2))),
                      focusedBorder:
                      UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)),
                      prefixIcon: Icon(
                        Icons.add,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
                    style: TextStyle(color: Theme.of(context).colorScheme.secondary),
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'رقم الهاتف',
                      hintStyle: TextStyle(color: Theme.of(context).colorScheme.secondary),

                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary.withOpacity(0.2))),
                      focusedBorder:
                      UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)),
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
                    style: TextStyle(color: Theme.of(context).colorScheme.secondary),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'رقم المحولة',
                      hintStyle: TextStyle(color: Theme.of(context).colorScheme.secondary),

                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary.withOpacity(0.2))),
                      focusedBorder:
                      UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)),
                      prefixIcon: Icon(
                        Icons.add_circle_outlined,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
                    style: TextStyle(color: Theme.of(context).colorScheme.secondary),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'العنوان',
                      hintStyle: TextStyle(color: Theme.of(context).colorScheme.secondary),

                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary.withOpacity(0.2))),
                      focusedBorder:
                      UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)),
                      prefixIcon: Icon(
                        Icons.add_location_sharp,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
                    style: TextStyle(color: Theme.of(context).colorScheme.secondary),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'اقرب نقطة دالة',
                      hintStyle: TextStyle(color: Theme.of(context).colorScheme.secondary),

                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary.withOpacity(0.2))),
                      focusedBorder:
                      UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)),
                      prefixIcon: Icon(
                        Icons.add_location,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
                    style: TextStyle(color: Theme.of(context).colorScheme.secondary),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'من فضلك اكتب طلبك',
                      hintStyle: TextStyle(color: Theme.of(context).colorScheme.secondary),

                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary.withOpacity(0.2))),
                      focusedBorder:
                      UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)),
                      prefixIcon: Icon(
                        Icons.note_add,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 40,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                          Radius.circular(25)
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black87,
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0,2)
                        )
                      ]
                  ),
                  child: const Center(
                    child: Text(
                      'ارسال',
                      style: TextStyle(
                          color:Colors.white,
                          fontFamily: 'cr',
                          fontSize:20
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'هل لديك مشكلة في تسجيل شكوى ؟',
                  style: TextStyle(
                      color: Colors.blue,
                      fontFamily: 'cr',
                      fontSize:12
                  ),
                ),
              ],
            ),
          ),
 */