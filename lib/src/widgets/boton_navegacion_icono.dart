import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BotonNavegacion extends StatelessWidget {
  final IconData icono;
  const BotonNavegacion({super.key, required this.icono});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color.fromARGB(255, 222, 153, 247),
      ),
      child: FaIcon(icono, size: 32, color: Color.fromARGB(255, 236, 236, 236)),
    );
  }
}
