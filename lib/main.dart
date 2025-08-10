import 'package:control_clases/src/pages/horario_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

//Colores a usar
//Fondo blanco
//Clase vacia fromARGB(255,234,196,248)
//Circulo botones
//Dias de la semana

@riverpod
String helloWorld(Ref ref) {
  return 'Hello world';
}

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HorarioPage());
  }
}
