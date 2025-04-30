import 'package:flutter/material.dart';

class PaginaSeis extends StatefulWidget {
  const PaginaSeis({Key? key}) : super(key: key);

  @override
  State<PaginaSeis> createState() => _PaginaSeisState();
}

class _PaginaSeisState extends State<PaginaSeis> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Seis'),
        centerTitle: true,
        backgroundColor: const Color(0xffa9b1f6),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            child: Container(
              width: double.infinity,
              height: 250.0,
              color: Colors.blueGrey,
              child: AnimatedAlign(
                alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                child: const FlutterLogo(size: 50.0),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Volver al Inicio'),
          ),
        ],
      ),
    );
  }
}
