import 'package:flutter/material.dart';
import 'package:tranlation/app/core/intercionalization/app_translate.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*backgroundColor: Colors.white,  
    body: Center(child: Text(AppTranslate(context).text('welcome')),),*/
      body: SingleChildScrollView(
          child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 1.01,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xffc678f9), Color(0xff1969e0)])),
              child: Stack(children: [
                PositionedDirectional(
                  top: 442,
                  start: 53,
                  child: SizedBox(
                      width: 257,
                      height: 58,
                      child: // button
                          SizedBox(
                              width: 287,
                              height: 68,
                              child: Stack(children: [
                                // ColorBackground
                                // Title
                                PositionedDirectional(
                                  child: Center(
                                    child: RaisedButton(
                                      child: Text(
                                        ('Continuar'),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .push(_createRoute());
                                      },
                                    ),
                                  ),
                                )
                              ]))),
                ),
                // Text
                PositionedDirectional(
                  top: 150,
                  start: 90,
                  child: SizedBox(
                      width: 200,
                      height: 70,
                      child: // Presentation
                          SizedBox(
                              child: // Antes de iniciarmos escolha um idioma.
                                  SizedBox(
                                      child: Text(
                        "Antes de iniciarmos escolha um idioma.",
                        style: const TextStyle(
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0),
                        textAlign: TextAlign.center,
                      )))),
                ),
                // Rectangle 1
                PositionedDirectional(
                  top: 246,
                  start: 95,
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.50,
                      height: MediaQuery.of(context).size.height * 0.08,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          border: Border.all(
                              color: const Color(0xffffffff), width: 1))),
                ),
                // Português
                PositionedDirectional(
                  top: 260,
                  start: 150,
                  child: SizedBox(
                      width: 85,
                      height: 24,
                      child: Text("Português",
                          style: const TextStyle(
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                              fontStyle: FontStyle.normal,
                              fontSize: 16.0))),
                ),
                // Rectangle 2
                PositionedDirectional(
                  top: 332,
                  start: 95,
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.50,
                      height: MediaQuery.of(context).size.height * 0.08,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          border: Border.all(
                              color: const Color(0xffffffff), width: 1))),
                ),
                // Krahô
                PositionedDirectional(
                  top: 346,
                  start: 165,
                  child: SizedBox(
                      width: 58,
                      height: 20,
                      child: Text("Ingles",
                          style: const TextStyle(
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                              fontStyle: FontStyle.normal,
                              fontSize: 16.0))),
                )
              ]))),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class Page2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 1.01,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xffc678f9), Color(0xff1969e0)])),
              child: Stack(children: [
                PositionedDirectional(
                  top: 442,
                  start: 53,
                  child: SizedBox(
                      width: 257,
                      height: 58,
                      child: // button
                          SizedBox(
                              width: 287,
                              height: 68,
                              child: Stack(children: [
                                // ColorBackground
                                PositionedDirectional(
                                  child: Center(
                                    child: RaisedButton(
                                      child: Text(
                                        ('Continuar'),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .push(_createRoute2());
                                      },
                                    ),
                                  ),
                                )
                              ]))),
                ),
                // Text
                PositionedDirectional(
                  top: 350,
                  start: 90,
                  child: SizedBox(
                      width: 200,
                      height: 130,
                      child: // Presentation
                          SizedBox(
                              child: // Antes de iniciarmos escolha um idioma.
                                  SizedBox(
                                      child: Text(
                        AppTranslate(context).text ("one"),
                        style: const TextStyle(
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0),
                        textAlign: TextAlign.center,
                      )))),
                ),
                // Rectangle 1
                // Rectangle 2
                // Krahô
              ]))),
    );
  }
}

Route _createRoute2() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page3(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class Page3 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
body: SingleChildScrollView(
          child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 1.01,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xffc678f9), Color(0xff1969e0)])),
              child: Stack(children: [
                PositionedDirectional(
                  top: 442,
                  start: 53,
                  child: SizedBox(
                      width: 257,
                      height: 58,
                      child: // button
                          SizedBox(
                              width: 287,
                              height: 68,
                              child: Stack(children: [
                                // ColorBackground
                                PositionedDirectional(
                                  child: Center(
                                    child: RaisedButton(
                                      child: Text(
                                        ('Continuar'),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .push(_createRoute3());
                                      },
                                    ),
                                  ),
                                )
                              ]))),
                ),
                // Text
                PositionedDirectional(
                  top: 320,
                  start: 90,
                  child: SizedBox(
                      width: 200,
                      height: 130,
                      child: // Presentation
                          SizedBox(
                              child: // Antes de iniciarmos escolha um idioma.
                                  SizedBox(
                                      child: Text(
                        
                        AppTranslate(context).text ("two"),
                        style: const TextStyle(
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0),
                        textAlign: TextAlign.center,
                      )))),
                ),
                // Rectangle 1
                // Rectangle 2
                // Krahô
              ]))),
    );
  }
}

Route _createRoute3() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page4(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class Page4 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
body: SingleChildScrollView(
          child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 1.01,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xffc678f9), Color(0xff1969e0)])),
              child: Stack(children: [
                PositionedDirectional(
                  top: 442,
                  start: 53,
                  child: SizedBox(
                      width: 257,
                      height: 58,
                      child: // button
                          SizedBox(
                              width: 287,
                              height: 68,
                              child: Stack(children: [
                                // ColorBackground
                                PositionedDirectional(
                                  child: Center(
                                    child: RaisedButton(
                                      child: Text(
                                        ('Continuar'),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .push(_createRoute4());
                                      },
                                    ),
                                  ),
                                )
                              ]))),
                ),
                // Text
                PositionedDirectional(
                  top: 300,
                  start: 90,
                  child: SizedBox(
                      width: 200,
                      height: 130,
                      child: // Presentation
                          SizedBox(
                              child: // Antes de iniciarmos escolha um idioma.
                                  SizedBox(
                                      child: Text(
                        
                        AppTranslate(context).text ("three"),
                        style: const TextStyle(
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0),
                        textAlign: TextAlign.center,
                      )))),
                ),
                // Rectangle 1
                // Rectangle 2
                // Krahô
              ]))),
    );
  }
}

Route _createRoute4() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page5(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class Page5 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 1.01,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xffc678f9), Color(0xff1969e0)])),
              child: Stack(children: [
                PositionedDirectional(
                  top: 442,
                  start: 53,
                  child: SizedBox(
                      width: 257,
                      height: 58,
                      child: // button
                          SizedBox(
                              width: 287,
                              height: 68,
                              child: Stack(children: [
                                // ColorBackground
                                PositionedDirectional(
                                  child: Center(
                                    child: RaisedButton(
                                      child: Text(
                                        ('Continuar'),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .push(_createRoute5());
                                      },
                                    ),
                                  ),
                                )
                              ]))),
                ),
                // Text
                PositionedDirectional(
                  top: 330,
                  start: 90,
                  child: SizedBox(
                      width: 200,
                      height: 130,
                      child: // Presentation
                          SizedBox(
                              child: // Antes de iniciarmos escolha um idioma.
                                  SizedBox(
                                      child: Text(
                        AppTranslate(context).text ("four"),
                        style: const TextStyle(
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0),
                        textAlign: TextAlign.center,
                      )))),
                ),
                // Rectangle 1
                // Rectangle 2
                // Krahô
              ]))),
    );
  }
}

Route _createRoute5() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page6(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class Page6 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
body: SingleChildScrollView(
          child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 1.01,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xffc678f9), Color(0xff1969e0)])),
              child: Stack(children: [
                PositionedDirectional(
                  top: 442,
                  start: 53,
                  child: SizedBox(
                      width: 257,
                      height: 58,
                      child: // button
                          SizedBox(
                              width: 287,
                              height: 68,
                              child: Stack(children: [
                                // ColorBackground
                                PositionedDirectional(
                                  child: Center(
                                    child: RaisedButton(
                                      child: Text(
                                        ('Continuar'),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .push(_createRoute6());
                                      },
                                    ),
                                  ),
                                )
                              ]))),
                ),
                // Text
                PositionedDirectional(
                  top: 300,
                  start: 90,
                  child: SizedBox(
                      width: 200,
                      height: 130,
                      child: // Presentation
                          SizedBox(
                              child: // Antes de iniciarmos escolha um idioma.
                                  SizedBox(
                                      child: Text(
                        
                        AppTranslate(context).text ("five"),
                        style: const TextStyle(
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0),
                        textAlign: TextAlign.center,
                      )))),
                ),
                // Rectangle 1
                // Rectangle 2
                // Krahô
              ]))),
    );
  }
}

Route _createRoute6() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page7(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class Page7 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
body: SingleChildScrollView(
          child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 1.01,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xffc678f9), Color(0xff1969e0)])),
              child: Stack(children: [
                PositionedDirectional(
                  top: 442,
                  start: 53,
                  child: SizedBox(
                      width: 257,
                      height: 58,
                      child: // button
                          SizedBox(
                              width: 287,
                              height: 68,
                              child: Stack(children: [
                                // ColorBackground
                                PositionedDirectional(
                                  child: Center(
                                    child: RaisedButton(
                                      child: Text(
                                        ('Continuar'),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .push(_createRoute7());
                                      },
                                    ),
                                  ),
                                )
                              ]))),
                ),
                // Text
                PositionedDirectional(
                  top: 330,
                  start: 90,
                  child: SizedBox(
                      width: 200,
                      height: 130,
                      child: // Presentation
                          SizedBox(
                              child: // Antes de iniciarmos escolha um idioma.
                                  SizedBox(
                                      child: Text(
                        
                        AppTranslate(context).text ("six"),
                        style: const TextStyle(
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0),
                        textAlign: TextAlign.center,
                      )))),
                ),
                // Rectangle 1
                // Rectangle 2
                // Krahô
              ]))),
    );
  }
}

Route _createRoute7() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page8(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class Page8 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 1.01,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xffc678f9), Color(0xff1969e0)])),
              child: Stack(children: [
                PositionedDirectional(
                  top: 442,
                  start: 53,
                  child: SizedBox(
                      width: 257,
                      height: 58,
                      child: // button
                          SizedBox(
                              width: 287,
                              height: 68,
                              child: Stack(children: [
                                // ColorBackground
                                PositionedDirectional(
                                  child: Center(
                                    child: RaisedButton(
                                      child: Text(
                                        ('Continuar'),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .push(_createRoute8());
                                      },
                                    ),
                                  ),
                                )
                              ]))),
                ),
                // Text
                PositionedDirectional(
                  top: 330,
                  start: 90,
                  child: SizedBox(
                      width: 200,
                      height: 130,
                      child: // Presentation
                          SizedBox(
                              child: // Antes de iniciarmos escolha um idioma.
                                  SizedBox(
                                      child: Text(
                        AppTranslate(context).text ("seven"),
                        style: const TextStyle(
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0),
                        textAlign: TextAlign.center,
                      )))),
                ),
                // Rectangle 1
                // Rectangle 2
                // Krahô
              ]))),
    );
  }
}

Route _createRoute8() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page9(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class Page9 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
body: SingleChildScrollView(
          child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 1.01,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xffc678f9), Color(0xff1969e0)])),
              child: Stack(children: [
                PositionedDirectional(
                  top: 442,
                  start: 53,
                  child: SizedBox(
                      width: 257,
                      height: 58,
                      child: // button
                          SizedBox(
                              width: 287,
                              height: 68,
                              child: Stack(children: [
                                // ColorBackground
                                PositionedDirectional(
                                  child: Center(
                                    child: RaisedButton(
                                      child: Text(
                                        ('Continuar'),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .push(_createRoute9());
                                      },
                                    ),
                                  ),
                                )
                              ]))),
                ),
                // Text
                PositionedDirectional(
                  top: 330,
                  start: 90,
                  child: SizedBox(
                      width: 200,
                      height: 130,
                      child: // Presentation
                          SizedBox(
                              child: // Antes de iniciarmos escolha um idioma.
                                  SizedBox(
                                      child: Text(
                        
                        AppTranslate(context).text ("eight"),
                        style: const TextStyle(
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0),
                        textAlign: TextAlign.center,
                      )))),
                ),
                // Rectangle 1
                // Rectangle 2
                // Krahô
              ]))),
    );
  }
}

Route _createRoute9() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page10(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class Page10 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
body: SingleChildScrollView(
          child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 1.01,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xffc678f9), Color(0xff1969e0)])),
              child: Stack(children: [
                PositionedDirectional(
                  top: 442,
                  start: 53,
                  child: SizedBox(
                      width: 257,
                      height: 58,
                      child: // button
                          SizedBox(
                              width: 287,
                              height: 68,
                              child: Stack(children: [
                                // ColorBackground
                                PositionedDirectional(
                                  child: Center(
                                    child: RaisedButton(
                                      child: Text(
                                        ('Continuar'),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .push(_createRoute10());
                                      },
                                    ),
                                  ),
                                )
                              ]))),
                ),
                // Text
                PositionedDirectional(
                  top: 330,
                  start: 90,
                  child: SizedBox(
                      width: 200,
                      height: 130,
                      child: // Presentation
                          SizedBox(
                              child: // Antes de iniciarmos escolha um idioma.
                                  SizedBox(
                                      child: Text(
                        
                        AppTranslate(context).text ("nine"),
                        style: const TextStyle(
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0),
                        textAlign: TextAlign.center,
                      )))),
                ),
                // Rectangle 1
                // Rectangle 2
                // Krahô
              ]))),
    );
  }
}

Route _createRoute10() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page11(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class Page11 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 1.01,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xffc678f9), Color(0xff1969e0)])),
              child: Stack(children: [
                PositionedDirectional(
                  top: 442,
                  start: 53,
                  child: SizedBox(
                      width: 257,
                      height: 58,
                      child: // button
                          SizedBox(
                              width: 287,
                              height: 68,
                              child: Stack(children: [
                                // ColorBackground
                                PositionedDirectional(
                                  child: Center(
                                    child: RaisedButton(
                                      child: Text(
                                        ('Continuar'),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .push(_createRoute11());
                                      },
                                    ),
                                  ),
                                )
                              ]))),
                ),
                // Text
                PositionedDirectional(
                  top: 300,
                  start: 90,
                  child: SizedBox(
                      width: 200,
                      height: 130,
                      child: // Presentation
                          SizedBox(
                              child: // Antes de iniciarmos escolha um idioma.
                                  SizedBox(
                                      child: Text(
                        AppTranslate(context).text ("ten"),
                        style: const TextStyle(
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0),
                        textAlign: TextAlign.center,
                      )))),
                ),
                // Rectangle 1
                // Rectangle 2
                // Krahô
              ]))),
    );
  }
}

Route _createRoute11() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page12(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class Page12 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
body: SingleChildScrollView(
          child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 1.01,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xffc678f9), Color(0xff1969e0)])),
              child: Stack(children: [
                PositionedDirectional(
                  top: 442,
                  start: 53,
                  child: SizedBox(
                      width: 257,
                      height: 58,
                      child: // button
                          SizedBox(
                              width: 287,
                              height: 68,
                              child: Stack(children: [
                                // ColorBackground
                                PositionedDirectional(
                                  child: Center(
                                    child: RaisedButton(
                                      child: Text(
                                        ('Continuar'),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .push(_createRoute12());
                                      },
                                    ),
                                  ),
                                )
                              ]))),
                ),
                // Text
                PositionedDirectional(
                  top: 300,
                  start: 90,
                  child: SizedBox(
                      width: 200,
                      height: 130,
                      child: // Presentation
                          SizedBox(
                              child: // Antes de iniciarmos escolha um idioma.
                                  SizedBox(
                                      child: Text(
                        
                        AppTranslate(context).text ("eleven"),
                        style: const TextStyle(
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0),
                        textAlign: TextAlign.center,
                      )))),
                ),
                // Rectangle 1
                // Rectangle 2
                // Krahô
              ]))),
    );
  }
}

Route _createRoute12() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page13(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class Page13 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
body: SingleChildScrollView(
          child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 1.01,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xffc678f9), Color(0xff1969e0)])),
              child: Stack(children: [
                PositionedDirectional(
                  top: 442,
                  start: 53,
                  child: SizedBox(
                      width: 257,
                      height: 58,
                      child: // button
                          SizedBox(
                              width: 287,
                              height: 68,
                              child: Stack(children: [
                                // ColorBackground
                                PositionedDirectional(
                                  child: Center(
                                    child: RaisedButton(
                                      child: Text(
                                        ('Continuar'),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .push(_createRoute());
                                      },
                                    ),
                                  ),
                                )
                              ]))),
                ),
                // Text
                PositionedDirectional(
                  top: 300,
                  start: 90,
                  child: SizedBox(
                      width: 200,
                      height: 130,
                      child: // Presentation
                          SizedBox(
                              child: // Antes de iniciarmos escolha um idioma.
                                  SizedBox(
                                      child: Text(
                        
                        AppTranslate(context).text ("twelve"),
                        style: const TextStyle(
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0),
                        textAlign: TextAlign.center,
                      )))),
                ),
                // Rectangle 1
                // Rectangle 2
                // Krahô
              ]))),
    );
  }
}
