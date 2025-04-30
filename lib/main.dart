import 'package:flutter/material.dart';
import 'pagina_inicio.dart';
import 'pagina_uno.dart';
import 'pagina_dos.dart';
import 'pagina_tres.dart';
import 'pagina_cuatro.dart';
import 'pagina_cinco.dart';
import 'pagina_seis.dart';
import 'pagina_siete.dart';
import 'pagina_ocho.dart';
import 'pagina_nueve.dart';
import 'pagina_diez.dart';

void main() => runApp(const MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PaginaInicio(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla1': (context) => const PaginaUno(),
        '/pantalla2': (context) => const PaginaDos(),
        '/pantalla3': (context) => const PaginaTres(),
        '/pantalla4': (context) => const PaginaCuatro(),
        '/pantalla5': (context) => const PaginaCinco(),
        '/pantalla6': (context) => const PaginaSeis(),
        '/pantalla7': (context) => const PaginaSiete(),
        '/pantalla8': (context) => const PaginaOcho(),
        '/pantalla9': (context) => const PaginaNueve(),
        '/pantalla10': (context) => const PaginaDiez(),
      },
    );
  }
}
