import 'dart:math' as math;

//!AnimatedBuilder

import 'package:flutter/material.dart';

class PaginaSiete extends StatefulWidget {
  const PaginaSiete({Key? key}) : super(key: key);

  @override
  State<PaginaSiete> createState() => _PaginaSieteState();
}

class _PaginaSieteState extends State<PaginaSiete>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Siete'),
        centerTitle: true,
        backgroundColor: const Color(0xff243aff),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _controller,
              child: const FlutterLogo(
                size: 100,
              ),
              builder: (BuildContext context, Widget? child) {
                return Transform.rotate(
                  angle: _controller.value * 2.0 * math.pi,
                  child: child,
                );
              },
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
