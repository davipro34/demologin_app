import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'signup_page.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Login Design',
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Colors.blue[200]!,
              Colors.blueAccent[700]!,
              Colors.blue[900]!,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              flutterIcon,
              titleSection,
              textSection,
              inputSection,
            ],
          ),
        ),
      ),
    );
  }
}

Widget flutterIcon = Container(
  height: 250,
  width: 250,
  padding: const EdgeInsets.all(30),
  margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(70),
    color: const Color.fromRGBO(255, 255, 255, 0.1),
  ),
  child: Container(
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(50),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          spreadRadius: 7,
          blurRadius: 15,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: Image.asset("assets/images/icon_flutter.png"),
  ),
);

Widget titleSection = Container(
  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Flutter',
        style: GoogleFonts.exo(
          fontSize: 40,
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
      ),
      const SizedBox(width: 3,),
      Text(
        'Login',
        style: GoogleFonts.exo(
          fontSize: 40,
          fontWeight: FontWeight.w900,
          color: Colors.lightGreenAccent[400],
        ),
      ),
    ],
  ),
);

Widget textSection = Container(
  margin: const EdgeInsets.fromLTRB(0, 5, 0, 50),
  child: Text(
    'Page de connexion Flutter',
    style: GoogleFonts.comfortaa(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  ),
);

Widget inputSection = Container(
  color: Colors.green,
  margin: const EdgeInsets.all(30),
  child: Column(
    children: [
      Container(
        height: 60,
        color: Colors.white,
        padding: const EdgeInsets.all(20),
      ),
      const SizedBox(height: 30),
      Container(
        height: 60,
        color: Colors.white,
        padding: const EdgeInsets.all(20),
      ),
    ],
  ),
);