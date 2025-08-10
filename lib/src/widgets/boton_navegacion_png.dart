import 'package:flutter/material.dart';

class BotonNavegacionPNG extends StatelessWidget {
  const BotonNavegacionPNG({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 52,
      height: 52,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color.fromARGB(255, 222, 153, 247),
      ),
      child: Image.asset(
        "assets/images/boton.png",
        width: 40,
        height: 40,
        color: Color.fromARGB(255, 236, 236, 236),
      ),
    );
  }
}
