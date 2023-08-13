
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_outlined),
        onPressed: () {
            context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;


    return SizedBox(
      //llega hasta el maximo de la pantalla
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          //un espaciado entre los buttons
          spacing: 10,
          //para que los buttons se centren
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated Button')),
            const ElevatedButton(onPressed: null, child: Text('Elevated Disable')),
            ElevatedButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.access_alarm_rounded), 
              label: const Text('Elevated Icon')),

            FilledButton(onPressed: (){}, child: const Text('Filled')),
            FilledButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.account_box_outlined), 
              label: const Text('filled icon')),
              // ignore: prefer_const_constructors
              FilledButton.tonal(onPressed: (){}, child: Text('Filled tonal')),

            OutlinedButton(onPressed: () {}, child: const Text('Outline')),
            OutlinedButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.wifi_sharp), 
              label: const Text('Outline icon')),

              TextButton(onPressed: (){}, child: const Text('Text')),
              TextButton.icon(onPressed: (){}, icon: const Icon(Icons.account_tree), label: const Text('Text icon')),

              const CustomButton(),

              IconButton(onPressed: (){}, icon: const Icon(Icons.width_wide_sharp)),
              IconButton(
                onPressed: (){}, 
                icon: const Icon(Icons.width_wide_sharp),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(colors.primary),
                  iconColor: const MaterialStatePropertyAll(Colors.white),
                ),
                ),

    
          ],
        ),
      ),
    );
  }
}


class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      //colocar bordes redondeados
      borderRadius: BorderRadius.circular(20),
      child: Material(
        //colocar el color del tema
        color: colors.primary,
        child: InkWell(
          //volverlo boton
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola mundo', style: TextStyle(color: Colors.white),),

            ),
        ),
      ),
    );
  }
}




