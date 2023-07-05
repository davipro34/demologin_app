import 'package:flutter/material.dart';
import 'signup_page.dart';

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
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Future Section 1'),
              Text('Future Section 2'),
              Text('Future Section 3'),
              Text('Future Section 4'),
            ],
          ),
        ),
      ),
    );
  }
}

class RaisedButton {
}
