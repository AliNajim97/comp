import 'package:flutter/material.dart';


class Story extends StatefulWidget {
  const Story({Key? key}) : super(key: key);

  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Dialog(
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
      ),
    );
  }
}