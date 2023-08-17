import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';
  
  const SnackbarScreen({super.key});

  //un medotod donde le pasamos el constext 
  void showCustomSnackbar(BuildContext context) {

    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
        content: const Text('Hola mundo'),
        action: SnackBarAction(label: 'Ok!', onPressed: () {}),
        duration: const Duration( seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(
      snackbar
    );
  }

  void openDialog( BuildContext context ) {
    showDialog(
      //esto es para que no puedan cerrar la ventana sin que den primero en un boton
      barrierDismissible: false,
      context: context, 
      builder: (context) => AlertDialog(
        title: const Text('¿Estas seguro?'),
        content: const Text('Voluptate id occaecat qui occaecat ex cupidatat reprehenderit aliquip nisi quis tempor do laborum.'),
        actions: [
          TextButton(
            // o se puede con el go router => context.pop
            onPressed: () => Navigator.of(context).pop(), 
            child: const Text('Cancelar')
            ),
            FilledButton(onPressed: () => context.pop(), child: const Text('Aceptar'))
        ],
      ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                //es como cuadrito de dialogo
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Reprehenderit sint aute sunt ad Lorem duis laboris exercitation proident.')
                  ]
                  );
              }
            , child: const Text('Licencias usadas')
            ),
            FilledButton(
              onPressed: () {
                openDialog(context);
              }
            , child: const Text('Mostrar dialogo')
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        icon: const Icon(Icons.remove_red_eye_outlined),
        label: const Text('Monstrar Snackbar'),
        ),
    );
  }
}