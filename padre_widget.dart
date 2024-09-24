import 'package:flutter/material.dart';
import 'hijo_widget.dart'; // Importa el widget hijo

class PadreWidget extends StatefulWidget {
  const PadreWidget({super.key});

  @override
  PadreWidgetState createState() => PadreWidgetState();
}

class PadreWidgetState extends State<PadreWidget> {
  String _mensajeHijo = "Mensaje para el hijo"; // Mensaje que será enviado al hijo

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pantalla Padre"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Campo de texto para que el padre cambie el mensaje
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: (nuevoMensaje) {
                setState(() {
                  _mensajeHijo = nuevoMensaje; // Actualiza el mensaje a enviar
                });
              },
              decoration: const InputDecoration(
                labelText: 'Escribe el mensaje para el hijo',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 20),
          
          // Aquí el padre envía el mensaje al hijo
          HijoWidget(mensaje: _mensajeHijo),
        ],
      ),
    );
  }
}
