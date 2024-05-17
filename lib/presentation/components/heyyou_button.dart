import 'package:flutter/material.dart';

class HeyYouButton extends StatelessWidget {
  final String texto;
  final Function() onPressed;
  final Color color;
  final double pWith;
  final double fSize;
  final Color textColor;
  final String? iconPath; // Icono opcional

  const HeyYouButton({
    Key? key,
    this.pWith = 15,
    this.fSize = 26,
    required this.texto,
    required this.onPressed,
    required this.color,
    required this.textColor,
    this.iconPath, // Parámetro opcional para el icono
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: pWith),
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (iconPath != null) ...[
              Image.asset(
                iconPath!,
                height: fSize, // Ajusta el tamaño del icono según sea necesario
                // color: textColor,
              ),
              const SizedBox(width: 10), // Espacio entre el icono y el texto
            ],
            Text(
              texto,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: fSize,
                fontFamily: 'Feather Bold',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
