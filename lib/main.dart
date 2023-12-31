import 'package:demologin_app/signup_page.dart';
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
          child: ListView(
            children: [
              flutterIcon,
              titleSection,
              textSection,
              inputSection,
              const ButtonWidget(),
              bottomSection,
              forgetButton,
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
  margin: const EdgeInsets.fromLTRB(60, 40, 60, 0),
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
  alignment: Alignment.center,
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
  margin: const EdgeInsets.all(30),
  child: Column(
    children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 1, color: Colors.white30),
        ),
        height: 60,
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(
                Icons.people_outline,
                size: 30,
                color: Colors.blue[900],
              ),
            ),
            Container(
                height: 60,
                width: 230,
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: false,
                  style: GoogleFonts.comfortaa(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Pseudo',
                    hintStyle: GoogleFonts.comfortaa(
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
          ],
        ),
      ),
      const SizedBox(height: 30),
      Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 1, color: Colors.white30),
        ),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(
                Icons.lock_outline,
                size: 30,
                color: Colors.blue[900],
              ),
            ),
            Container(
                height: 60,
                width: 230,
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  style: GoogleFonts.comfortaa(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Mot de passe',
                    hintStyle: GoogleFonts.comfortaa(
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
          ],
        ),
      ),
    ],
  ),
);

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SignupPage()),  
        );
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        backgroundColor: Colors.white,
        padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
      ),
      child: Text(
        'Connexion'.toUpperCase(),
        style: TextStyle(
          color: Colors.blue[900],
          fontSize: 20,
        ),
      ),
    );
  }
}

Widget bottomSection = Container(
  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Pas encore de compte ?',
        style: GoogleFonts.comfortaa(color: Colors.white),
      ),
      const SignupButton(),
    ],
  ),
);

class SignupButton extends StatelessWidget {
  const SignupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SignupPage()),  
        );
      },
      child: Text(
        'Inscrivez-vous',
        style: GoogleFonts.comfortaa(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

Widget forgetButton = Container(
  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
  child: TextButton(
    onPressed: () {},
    child: Text('Mot de passe oublié ?',
      style: GoogleFonts.comfortaa(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
);