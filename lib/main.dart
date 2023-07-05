import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Login Design',
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Première page'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {  },
        child: const Text('Aller à la deuxième page'),
        ),
      ),
    );
  }
}

class RaisedButton {
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deuxième page'),
      ),
    );
  }
}