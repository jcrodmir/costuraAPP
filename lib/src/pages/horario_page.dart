import 'package:control_clases/src/providers/hello_word_provider.dart';
import 'package:control_clases/src/widgets/widgets_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HorarioPage extends StatelessWidget {
  const HorarioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [CustomAppBar(), Navegacion(), Horario()]),
    );
  }
}

class Horario extends StatelessWidget {
  const Horario({super.key});

  final List<String> diasSemana = const [
    "Lunes",
    "Martes",
    "Miércoles",
    "Jueves",
    "Viernes",
    "Sábado",
    "Domingo",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          diasSemana
              .map(
                (dia) => Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2.0,
                    horizontal: 10.0,
                  ),
                  child: DiaHorario(dia: dia),
                ),
              )
              .toList(),
    );
  }
}

class DiaHorario extends StatelessWidget {
  final String dia;

  const DiaHorario({super.key, required this.dia});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        border: Border.all(color: Colors.purple.shade200),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.purple.shade50,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          // Día
          Container(
            width: width * 0.25,
            alignment: Alignment.center,
            child: Text(
              dia,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 10),
          // Clases
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [BotonClase(), BotonClase(), BotonClase()],
            ),
          ),
        ],
      ),
    );
  }
}

class BotonClase extends ConsumerWidget {
  const BotonClase({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final helloWorld = ref.watch(helloWorlProvider);

    return ElevatedButton(
      onPressed: () {
        // Lógica futura
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple[50],
        foregroundColor: Colors.black87,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        textStyle: const TextStyle(fontSize: 14),
      ),
      child: Text(helloWorld),
    );
  }
}
