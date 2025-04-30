import 'package:flutter/material.dart';

class PaginaDos extends StatelessWidget {
  const PaginaDos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Dos'),
        centerTitle: true,
        backgroundColor: const Color(0xff91cb9e),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AboutListTile(
            icon: Icon(Icons.info),
            applicationIcon: FlutterLogo(),
            applicationLegalese: 'Legalese',
            applicationName: 'Flutter App',
            applicationVersion: 'version 1.0.0',
            aboutBoxChildren: [
              Text('This is a text created by Flutter Mapp'),
            ],
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Volver al Inicio '),
            ),
          ),
        ],
      ),
    );
  }
}
