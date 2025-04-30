import 'package:flutter/material.dart';

class PaginaCinco extends StatelessWidget {
  const PaginaCinco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Cinco'),
        centerTitle: true,
        backgroundColor: const Color(0xfff492df),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                height: 120.0,
                width: 400.0,
                color: Colors.blueGrey,
                child: const Align(
                  alignment: Alignment.bottomRight,
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
              ),
            ],
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
