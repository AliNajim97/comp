import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyPage extends StatefulWidget {
  const MyPage({key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  double get w => MediaQuery.of(context).size.width;
  double get h => MediaQuery.of(context).size.height;

  bool isOpened = false;
  bool menuOpen = true;
  bool textCtrl = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(title: const Text("الشكاوى"),),
        body: Container(
          width: w,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  colors: [
                    Colors.white,
                    Colors.white70,
                  ]
              )
        ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
                      margin: const EdgeInsets.symmetric(vertical: 55, horizontal: 20),
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
                            const Text("قسم الشكاوى",
                              style: TextStyle(
                                  color:Colors.indigo,
                                  fontFamily: 'cr',
                                  fontSize:18
                              ),
                            ),
                            const SizedBox(height: 40),
                            Directionality(
                              textDirection: TextDirection.rtl,
                              child: TextField(
                                style: const TextStyle(color: Colors.black45),
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  hintText: 'ادخل اسمك',
                                  hintStyle: const TextStyle(
                                      color: Colors.black45,
                                      fontFamily: 'cr',
                                      fontSize: 14
                                  ),

                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary.withOpacity(0.2))),
                                  focusedBorder:
                                  UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)),
                                  prefixIcon: Icon(Iconsax.user4,
                                    color: Theme.of(context).colorScheme.secondary,
                                    size: 24,
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
                                  hintStyle: const TextStyle(
                                      color: Colors.black45,
                                      fontFamily: 'cr',
                                      fontSize: 14
                                  ),

                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary.withOpacity(0.2))),
                                  focusedBorder:
                                  UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)),
                                  prefixIcon: Icon(Iconsax.call_calling,
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
                                  hintStyle: const TextStyle(
                                      color: Colors.black45,
                                      fontFamily: 'cr',
                                      fontSize: 14
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary.withOpacity(0.2))),
                                  focusedBorder:
                                  UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)),
                                  prefixIcon: Icon(Iconsax.edit_2,
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
                                  hintStyle: const TextStyle(
                                      color: Colors.black45,
                                      fontFamily: 'cr',
                                      fontSize: 14
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary.withOpacity(0.2))),
                                  focusedBorder:
                                  UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)),
                                  prefixIcon: Icon(Iconsax.location,
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
                                  hintStyle: const TextStyle(
                                      color: Colors.black45,
                                      fontFamily: 'cr',
                                      fontSize: 14
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary.withOpacity(0.2))),
                                  focusedBorder:
                                  UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)),
                                  prefixIcon: Icon(Iconsax.location_add,
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
                                  hintStyle: const TextStyle(
                                      color: Colors.black45,
                                      fontFamily: 'cr',
                                      fontSize: 14
                                  ),


                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary.withOpacity(0.2))),
                                  focusedBorder:
                                  UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)),
                                  prefixIcon: Icon(Iconsax.edit,
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 40),
                            ButtonTheme(
                              minWidth: 150.0,
                              height: 50.0,
                              // ignore: deprecated_member_use
                              child:OutlineButton.icon(
                                onPressed: () {
                                  Dialog(
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(30))
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(1.0),
                                      child: Stack(
                                        clipBehavior: Clip.none, alignment: Alignment.topCenter,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Container(
                                                width:MediaQuery.of(context).size.width*0.98,
                                                height: 480,
                                                decoration: const BoxDecoration(
                                                    borderRadius: BorderRadius.all(Radius.circular(30)),
                                                    color: Colors.white),
                                                child: SingleChildScrollView(
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: <Widget>[
                                                      Padding(
                                                        padding: const EdgeInsets.only(top: 15,right: 250),
                                                        child: IconButton(
                                                          icon: const Icon(Icons.close,size: 35),
                                                          color: Colors.black54,
                                                          onPressed: () {
                                                            Navigator.pop(context);
                                                          },
                                                        ),
                                                      ),
                                                      const SizedBox(height: 20),
                                                      const Text('عن التطبيق',
                                                        textAlign: TextAlign.center,
                                                        textDirection: TextDirection.rtl,

                                                      ),

                                                      const SizedBox(height: 35),
                                                      const Text('برمجة وتصميم',
                                                        textAlign: TextAlign.center,
                                                        textDirection: TextDirection.rtl,

                                                      ),
                                                      const SizedBox(height: 3),
                                                      const Text('علي نجم',
                                                        textAlign: TextAlign.center,
                                                        textDirection: TextDirection.rtl,

                                                      ),

                                                      const SizedBox(height: 4),
                                                      Column(children: <Widget>[
                                                        const SizedBox(height: 10),
                                                        InkWell(
                                                          child: Icon(Icons.near_me,size: 35,
                                                            color: Colors.greenAccent[200],),
                                                          onTap: (){
                                                          },
                                                        ),
                                                        const Text('Telegram',
                                                          textAlign: TextAlign.end,
                                                          textDirection: TextDirection.rtl,

                                                        ),
                                                      ],),

                                                    ],
                                                  ),
                                                )
                                            ),
                                          ),
                                          Positioned(
                                              top: -80,
                                              child: CircleAvatar(
                                                radius: 80,
                                                child: ClipOval(
                                                  child: Image.asset('logo.png',fit: BoxFit.fill,),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                textColor: Colors.indigo,
                                highlightedBorderColor: Colors.red,
                                splashColor: Colors.indigo,
                                borderSide: const BorderSide(
                                  color: Colors.purple,
                                ),

                                shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0),

                                ),
                                icon: const Icon(
                                  Icons.send,textDirection: TextDirection.rtl,
                                  size: 18.0,
                                ),
                                label: const Text(
                                  'ارسال',textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                      color:Colors.indigo,
                                      fontFamily: 'cr',
                                      fontSize:14
                                  ),
                                ),


                              ),
                            ),

                            const SizedBox(height: 10),
                            const Text(
                              'هل لديك مشكلة في تسجيل شكوى ؟',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'cr',
                                  fontSize:8
                              ),
                            ),
                            const SizedBox(height: 10),





                          ],
                        ),



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