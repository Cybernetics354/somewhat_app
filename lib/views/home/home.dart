import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:somewhat_app/views/memories/memories.dart';

class HomeMainView extends StatefulWidget {
  @override
  _HomeMainViewState createState() => _HomeMainViewState();
}

class _HomeMainViewState extends State<HomeMainView> with SingleTickerProviderStateMixin {
  // First Step Instances
  Animation<double> animation1;
  AnimationController controller1;
  String date;
  String text = "Click when it's your day :)";
  String birthdayDate = "May 7";

  // Second Step Instances
  bool heartFlareController = false;
  bool titleController = false;
  bool descriptionController = false;

  // Checking the Date
  void checkDate() {
    var datetime = DateTime.now();
    var monthAndDay = DateFormat("MMMMd").format((datetime)).toString();
    setState(() {
      date = monthAndDay;
    });
    print(monthAndDay);
  }

  // Animating Button (Step 1)
  void animatingInstances() {
    controller1 = AnimationController(vsync: this, duration: Duration(milliseconds: 400));
    animation1 = Tween<double>(begin: 70.0, end: 100.0).animate(CurvedAnimation(parent: controller1, curve: Curves.linearToEaseOut));
    controller1.addListener(() {
      setState(() {
        
      });
    });
    controller1.addStatusListener((status) {
      if(status == AnimationStatus.dismissed) {
        controller1.forward();
      } else if(status == AnimationStatus.completed) {
        controller1.reverse();
      }
    });

    controller1.forward();
    print(animation1.value);
  }

  // Dissapearing Button and Text (Step 2)
  bool clicked = false;
  void onButtonClicked() async {
    if(date == birthdayDate) {
      print("Stopped");
      controller1.stop();
      setState(() {
        clicked = true;
      });

      await Future.delayed(Duration(milliseconds: 400));
      setState(() {
        heartFlareController = true;
      });
      await Future.delayed(Duration(milliseconds: 1000));
      setState(() {
        titleController = true;
      });
      await Future.delayed(Duration(milliseconds: 500));
      setState(() {
        descriptionController = true;
      });
    } else {
      print("This isn't time yet");
      setState(() {
        text = "Belum waktunya, sabar ya put hehe :)";
      });
    }
  }

  @override
  void initState() {
    super.initState();
    animatingInstances();
    checkDate();
  }

  @override
  void dispose() {
    controller1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            clicked == false ? Colors.yellow[700] : Colors.yellow[700].withOpacity(0.3),
            clicked == false ? Colors.red[400] : Colors.red[400].withOpacity(0.3)
          ]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: mainContainer()
      ),
    );
  }

  // Main Container, if you want to add some widgets you can add it here :)
  Widget mainContainer() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: <Widget>[
          flareContainer(),
          turnOnButton()
        ],
      ),
    );
  }

  // Turn On Widget
  Widget turnOnButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            width: 100.0,
            height: 100.0,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  print("Tapped");
                  onButtonClicked();
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 400),
                  curve: Curves.linearToEaseOut,
                  width: clicked == false ? animation1.value : 0.0,
                  height: clicked == false ? animation1.value : 0.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: clicked == false ? Colors.white : Colors.transparent),
                    shape: BoxShape.circle
                  ),
                  child: Center(
                    child: AnimatedSwitcher(
                      duration: Duration(milliseconds: 400),
                      child: clicked == false ? Icon(Icons.favorite, color: Colors.white,) : SizedBox()
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          AnimatedSwitcher(
            duration: Duration(milliseconds: 400),
            transitionBuilder: (child, animation) {
              final Animation _textAnimation = Tween<Offset>(begin: Offset(0, 1), end: Offset(0,0)).animate(animation);
              return FadeTransition(
                opacity: animation,
                child: SlideTransition(
                  position: _textAnimation,
                  child: child,
                ),
              );
            },
            child: clicked == false ? Container(
              child: Column(
                children: <Widget>[
                  Text(
                    text,
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "build with  ♥  from hnf",
                    style: TextStyle(color: Colors.white, fontSize: 12.0),
                  ),
                ],
              ),
            ) : SizedBox(),
          ),
          SizedBox(height: 150.0,)
        ],
      ),
    );
  }

  // Flare Container
  Widget flareContainer() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedSwitcher(
            duration: Duration(milliseconds: 100),
            child: heartFlareController == true ? Container(
              width: 400.0,
              height: 300.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (_) => MemoriesMainView()
                  ));
                },
                child: FlareActor(
                  'assets/flare/heart.flr',
                  animation: 'Favorite',
                ),
              ),
            ) : SizedBox()
          ),
          AnimatedSwitcher(
            transitionBuilder: (child, animation) {
              final Animation _slideAnimation = Tween<Offset>(begin: Offset(0, 1), end: Offset(0, 0)).animate(CurvedAnimation(parent: animation, curve: Curves.linearToEaseOut));
              return SlideTransition(
                position: _slideAnimation,
                child: FadeTransition(
                  opacity: animation,
                  child: child,
                ),
              );
            },
            duration: Duration(milliseconds: 1000),
            child: titleController == true ? Text(
              "Barakallah fi Umrik Put ;)", style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
            ) : SizedBox()
          ),
          AnimatedSwitcher(
            transitionBuilder: (child, animation) {
              final Animation _slideAnimation = Tween<Offset>(begin: Offset(0, 1), end: Offset(0, 0)).animate(CurvedAnimation(parent: animation, curve: Curves.linearToEaseOut));
              return SlideTransition(
                position: _slideAnimation,
                child: FadeTransition(
                  opacity: animation,
                  child: child,
                ),
              );
            },
            duration: Duration(milliseconds: 1000),
            child: descriptionController == true ? Container(
              width: MediaQuery.of(context).size.width - 100.0,
              child: Text(
                "Semoga tambah sukses kedepannya Uwu, sehat selalu, kerja boleh yang penting jangan terlalu memaksain diri yaaa.. kalau sekiranya kelelahan istirahat dulu, jangan lupa makan yang banyak biar tambah kuat kek spiderman wkwkwk, sama minum jugaaa dibanyakin apalagi kamu banyak aktifitas otomatis kamu perlu cairan tubuh kannn, atau kamu perlu aku hehe, semoga kedepannya menjadi lebih baik lagi yaa, i miss u so bad :((, kalau dah dibaca tap logo cintanya yaa", style: TextStyle(color: Colors.black,),
                textAlign: TextAlign.center,
              ),
            ) : SizedBox(
              height: 100.0,
            )
          ),
        ],
      ),
    );
  }
}
