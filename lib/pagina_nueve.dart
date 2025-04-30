import 'package:flutter/material.dart';

//! AnimatedCrossFade

class PaginaNueve extends StatefulWidget {
  const PaginaNueve({Key? key}) : super(key: key);

  @override
  State<PaginaNueve> createState() => _PaginaNueveState();
}

class _PaginaNueveState extends State<PaginaNueve> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Nueve'),
        centerTitle: true,
        backgroundColor: const Color(0xff00b8d4),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              firstChild: Image.network(
                'https://raw.githubusercontent.com/Johana-Moras-0458/img/refs/heads/main/conejo1.jpg',
                width: 200,
                fit: BoxFit.contain,
              ),
              secondChild: Image.network(
                'https://raw.githubusercontent.com/Johana-Moras-0458/img/refs/heads/main/conejo2.jpg',
                width: 200,
                fit: BoxFit.contain,
              ),
              crossFadeState:
                  _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: const Duration(seconds: 1),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                setState(() {
                  _bool = !_bool;
                });
              },
              child: const Text(
                'Cambiar Imagen',
                style: TextStyle(
                  color: Colors.blue,
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
      ),
    );
  }
}
