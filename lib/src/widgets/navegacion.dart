import 'package:control_clases/src/widgets/widgets_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Navegacion extends StatelessWidget {
  const Navegacion({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BotonNavegacion(icono: FontAwesomeIcons.userGraduate),
          BotonNavegacionPNG(),
          BotonNavegacion(icono: FontAwesomeIcons.scissors),
          BotonNavegacion(icono: FontAwesomeIcons.gear),
        ],
      ),
    );
  }
}
