import 'package:flutter/material.dart';

class PaginaInicio extends StatelessWidget {
  const PaginaInicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff813262),
        title: const Text(
          'Página de Inicio',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla1');
              },
              child: const Text('Pantalla Uno'),
            )),
            const SizedBox(height: 10.0),
            Center(
                child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla2');
              },
              child: const Text('Pantalla Dos'),
            )),
            const SizedBox(height: 10.0),
            Center(
                child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla3');
              },
              child: const Text('Pantalla Tres'),
            )),
            const SizedBox(height: 10.0),
            Center(
                child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla4');
              },
              child: const Text('Pantalla Cuatro'),
            )),
            const SizedBox(height: 10.0),
            Center(
                child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla5');
              },
              child: const Text('Pantalla Cinco'),
            )),
            const SizedBox(height: 10.0),
            Center(
                child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla6');
              },
              child: const Text('Pantalla Seis'),
            )),
            const SizedBox(height: 10.0),
            Center(
                child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla7');
              },
              child: const Text('Pantalla Siete'),
            )),
            const SizedBox(height: 10.0),
            Center(
                child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla8');
              },
              child: const Text('Pantalla Ocho'),
            )),
            const SizedBox(height: 10.0),
            Center(
                child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla9');
              },
              child: const Text('Pantalla Nueve'),
            )),
            const SizedBox(height: 10.0),
            Center(
                child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla10');
              },
              child: const Text('Pantalla Diez'),
            )),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
