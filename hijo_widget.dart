import 'package:flutter/material.dart';

class HijoWidget extends StatelessWidget {
  final String mensaje; // Mensaje que el padre envía al hijo

  const HijoWidget({
    super.key,
    required this.mensaje, // El mensaje ahora es requerido
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20), // Personalizamos el padding
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent.withOpacity(0.2), // Fondo suave
        borderRadius: BorderRadius.circular(15), // Bordes redondeados
      ),
      child: Column(
        children: [
          Text(
            mensaje, // Mostramos el mensaje enviado por el padre
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent, // Color de texto personalizado
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blueAccent, // Color del texto del botón
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // Bordes del botón
              ),
            ),
            onPressed: () {},
            child: const Text("Soy el widget hijo"),
          ),
        ],
      ),
    );
  }
}
