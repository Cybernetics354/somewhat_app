import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:somewhat_app/views/notes/notes.dart';

class MemoriesMainView extends StatefulWidget {
  @override
  _MemoriesMainViewState createState() => _MemoriesMainViewState();
}

class _MemoriesMainViewState extends State<MemoriesMainView> {
  // Tinder Cards Instances
  final List<String> tinderCards = [
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpg',
    'assets/images/image4.jpg',
    'assets/images/image5.jpg',
    'assets/images/image6.jpg',
    'assets/images/image7.jpg',
    'assets/images/image8.jpg',
    'assets/images/image9.jpg',
    'assets/images/image10.jpg',
    'assets/images/image11.jpg',
    'assets/images/image12.jpg',
    'assets/images/image13.jpg',
    'assets/images/image14.jpg',
  ];

  final List<String> tinderCardsCaptions = [
    'Wkwk ini pas habi upacara diliatin bu dewi wkwk',
    'Akhirnya ketemu juga pas di malang, walaupun sempet pisah di akhir',
    'Wkwkwk sah? saaahhh',
    'Keknya ini foto pertama kali ya, wkwk di depan uks',
    'Date pertama, habis makan di wong solo wkwk',
    'Ini kamu yang ngefoto wkwk, bagus',
    'Pas ujian praktek, sempet2in foto berdua dong wkwkw',
    'Heyy ayo naik bebekkkkk',
    'Ini dideket mbok gandung kalo gasalah habis Ujian',
    'Taman Pandanaran :)',
    'Hari terakhir masuk, habis jalan santai pas paginya',
    'Hehe, dari tmg ke skh jam 4 pagi sampe sekolah jam 7, biar bisa dapet momment sama kamu :)',
    'Pertama kali kita buka bareng wkwk',
    'Wonogiri punya cerita :)'
  ];

  CardController controller;
  bool cardIdentifier = false;

  // Content Controller Instances
  bool contentController = false;
  void setTrue() async {
    await Future.delayed(Duration(milliseconds: 400));
    setState(() {
      contentController = true;
    });
  }

  @override
  void initState() { 
    super.initState();
    setTrue();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[300],
      child: Scaffold(
        floatingActionButton: cardIdentifier == true ? FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(Icons.navigate_next, color: Colors.red[300],),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (_) => NotesMainView()
            ));
          },
        ) : null,
        backgroundColor: Colors.transparent,
        body: mainContainer()
      ),
    );
  }

  // Main Container, if you want to add some widgets you can add it here :)
  Widget mainContainer() {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              titleWidget(),
              tinderCardWidget()
            ],
          ),
        ),
        Center(
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 1000),
            child: cardIdentifier == true ? Container(
              padding: EdgeInsets.all(20.0),
              width: 200.0,
              height: 150.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                border: Border.all(color: Colors.white)
              ),
              child: Center(
                child: Text("Let's Sail Together Again", style: TextStyle(color: Colors.white, fontSize: 25.0), textAlign: TextAlign.center,),
              ),
            ) : SizedBox()
          ),
        )
      ],
    );
  }

  // Title Widget
  Widget titleWidget() {
    return AnimatedSwitcher(
      transitionBuilder: (child, animation) {
        final Animation _slideAnimation = Tween<Offset>(begin: Offset(0, 1), end: Offset(0,0)).animate(CurvedAnimation(parent: animation, curve: Curves.linearToEaseOut));
        return SlideTransition(
          position: _slideAnimation,
          child: FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
      },
      duration: Duration(milliseconds: 2000),
      child: contentController == true ? Container(
        child: Column(
          children: <Widget>[
            Text("Our Memories", style: TextStyle(fontSize: 25.0, color: Colors.white),),
            Text("Swipe aja card nya sampai habis hehe", style: TextStyle(color: Colors.white),)
          ],
        ),
      ) : SizedBox()
    );
  }

  // Tinder Card Widget
  Widget tinderCardWidget() {
    return AnimatedSwitcher(
      transitionBuilder: (child, animation) {
        final Animation _slideAnimation = Tween<Offset>(begin: Offset(0, 1), end: Offset(0,0)).animate(CurvedAnimation(parent: animation, curve: Curves.linearToEaseOut));
        return SlideTransition(
          position: _slideAnimation,
          child: FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
      },
      duration: Duration(milliseconds: 2000),
      child: contentController == true ? Container(
        height: MediaQuery.of(context).size.height * 0.6,
        child: new TinderSwapCard(
            orientation: AmassOrientation.BOTTOM,
            totalNum: 14,
            stackNum: 3,
            swipeEdge: 4.0,
            maxWidth: MediaQuery.of(context).size.width * 0.9,
            maxHeight: MediaQuery.of(context).size.width * 0.9,
            minWidth: MediaQuery.of(context).size.width * 0.8,
            minHeight: MediaQuery.of(context).size.width * 0.8,
            cardBuilder: (context, index) => Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(tinderCardsCaptions[index], textAlign: TextAlign.center,),
                        Image.asset(tinderCards[index],),
                      ],
                    ),
                  ),
                ),
            cardController: controller = CardController(),
            swipeUpdateCallback:
                (DragUpdateDetails details, Alignment align) {
              /// Get swiping card's alignment
              if (align.x < 0) {
                //Card is LEFT swiping
              } else if (align.x > 0) {
                //Card is RIGHT swiping
              }
            },
            swipeCompleteCallback:
                (CardSwipeOrientation orientation, int index) {
              /// Get orientation & index of swiped card!
              if(index == 13) {
                print("Selesai");
                setState(() {
                  cardIdentifier = true;
                });
              }
            })) : SizedBox()
    );
  }
}
