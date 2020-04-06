import 'dart:io';

import 'package:flutter/material.dart';

final BoxDecoration decorations = BoxDecoration(
  image: DecorationImage(
    image: AssetImage("assets/images/cover.jpg"),
    fit: BoxFit.fitHeight
  )
);

class NotesMainView extends StatefulWidget {
  @override
  _NotesMainViewState createState() => _NotesMainViewState();
}

class _NotesMainViewState extends State<NotesMainView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (_) => Notes2()
        ));
      },
      child: Container(
        decoration: decorations,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: mainContainer(),
          ),
        ),
      ),
    );
  }

  // Main Container, if you want to add some widgets you can add it here :)
  Widget mainContainer() {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Put", style: TextStyle(color: Colors.white, fontSize: 40.0),),
            Text("Im Sorry", style: TextStyle(color: Colors.white, fontSize: 40.0),),
          ],
        ),
      ),
    );
  }
}

class Notes2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (_) => Notes3()
        ));
      },
      child: Container(
        decoration: decorations,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: mainContainer(),
          ),
        ),
      ),
    );
  }

  // Main Container, if you want to add some widgets you can add it here :)
  Widget mainContainer() {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("For Being Selfish,", style: TextStyle(color: Colors.white, fontSize: 40.0),),
            Text("For Being Childish", style: TextStyle(color: Colors.white, fontSize: 40.0),),
          ],
        ),
      ),
    );
  }
}

class Notes3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (_) => Notes4()
        ));
      },
      child: Container(
        decoration: decorations,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: mainContainer(),
          ),
        ),
      ),
    );
  }

  // Main Container, if you want to add some widgets you can add it here :)
  Widget mainContainer() {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("If i have a chance", style: TextStyle(color: Colors.white, fontSize: 40.0),),
            Text("To Repair all that i broke", style: TextStyle(color: Colors.white, fontSize: 40.0),),
          ],
        ),
      ),
    );
  }
}

class Notes4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (_) => Notes5()
        ));
      },
      child: Container(
        decoration: decorations,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: mainContainer(),
          ),
        ),
      ),
    );
  }

  // Main Container, if you want to add some widgets you can add it here :)
  Widget mainContainer() {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("I'll do it Whatever the Costs", style: TextStyle(color: Colors.white, fontSize: 40.0),),
          ],
        ),
      ),
    );
  }
}

class Notes5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (_) => Notes6()
        ));
      },
      child: Container(
        decoration: decorations,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: mainContainer(),
          ),
        ),
      ),
    );
  }

  // Main Container, if you want to add some widgets you can add it here :)
  Widget mainContainer() {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Because i don't want to lose you", style: TextStyle(color: Colors.white, fontSize: 40.0),),
          ],
        ),
      ),
    );
  }
}

class Notes6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (_) => Notes7()
        ));
      },
      child: Container(
        decoration: decorations,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: mainContainer(),
          ),
        ),
      ),
    );
  }

  // Main Container, if you want to add some widgets you can add it here :)
  Widget mainContainer() {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("I want to change", style: TextStyle(color: Colors.white, fontSize: 40.0),),
          ],
        ),
      ),
    );
  }
}

class Notes7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (_) => Notes8()
        ));
      },
      child: Container(
        decoration: decorations,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: mainContainer(),
          ),
        ),
      ),
    );
  }

  // Main Container, if you want to add some widgets you can add it here :)
  Widget mainContainer() {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("One day I will propose to you as a form of my seriousness", style: TextStyle(color: Colors.white, fontSize: 40.0),),
          ],
        ),
      ),
    );
  }
}

class Notes8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (_) => Notes9()
        ));
      },
      child: Container(
        decoration: decorations,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: mainContainer(),
          ),
        ),
      ),
    );
  }

  // Main Container, if you want to add some widgets you can add it here :)
  Widget mainContainer() {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Until then, please wait for me", style: TextStyle(color: Colors.white, fontSize: 40.0),),
          ],
        ),
      ),
    );
  }
}

class Notes9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (_) => Notes10()
        ));
      },
      child: Container(
        decoration: decorations,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: mainContainer(),
          ),
        ),
      ),
    );
  }

  // Main Container, if you want to add some widgets you can add it here :)
  Widget mainContainer() {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("And pray that I can successfully run this startup", style: TextStyle(color: Colors.white, fontSize: 40.0),),
          ],
        ),
      ),
    );
  }
}

class Notes10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (_) => Notes11()
        ));
      },
      child: Container(
        decoration: decorations,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: mainContainer(),
          ),
        ),
      ),
    );
  }

  // Main Container, if you want to add some widgets you can add it here :)
  Widget mainContainer() {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("So you don't need to wait too long", style: TextStyle(color: Colors.white, fontSize: 40.0),),
          ],
        ),
      ),
    );
  }
}

class Notes11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (_) => Notes12()
        ));
      },
      child: Container(
        decoration: decorations,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: mainContainer(),
          ),
        ),
      ),
    );
  }

  // Main Container, if you want to add some widgets you can add it here :)
  Widget mainContainer() {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Thank you for taking the time to see this", style: TextStyle(color: Colors.white, fontSize: 40.0),),
          ],
        ),
      ),
    );
  }
}

class Notes12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (_) => Notes13()
        ));
      },
      child: Container(
        decoration: decorations,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: mainContainer(),
          ),
        ),
      ),
    );
  }

  // Main Container, if you want to add some widgets you can add it here :)
  Widget mainContainer() {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("برك الله في عمرك", style: TextStyle(color: Colors.white, fontSize: 40.0),),
          ],
        ),
      ),
    );
  }
}

class Notes13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (_) => Notes14()
        ));
      },
      child: Container(
        decoration: decorations,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: mainContainer(),
          ),
        ),
      ),
    );
  }

  // Main Container, if you want to add some widgets you can add it here :)
  Widget mainContainer() {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("I love U", style: TextStyle(color: Colors.white, fontSize: 40.0),),
          ],
        ),
      ),
    );
  }
}

class Notes14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        exit(0);
      },
      child: Container(
        decoration: decorations,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: mainContainer(),
          ),
        ),
      ),
    );
  }

  // Main Container, if you want to add some widgets you can add it here :)
  Widget mainContainer() {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Sincerely, Hanif Miftahuddin", style: TextStyle(color: Colors.white, fontSize: 40.0),),
          ],
        ),
      ),
    );
  }
}

