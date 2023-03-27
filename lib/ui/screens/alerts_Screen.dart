import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});
  void _mostrarAlert(BuildContext context) {



    showDialog(
        context: context,
        barrierDismissible: false,
        barrierColor: Colors.black26,
        builder: (context) {
          return AlertDialog(
           // backgroundColor: Color.fromARGB(1, 7, 255, 255),
            shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(20.0),


            ),
            title: Text('juajuasjuas'),
            content: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text('annananana'),
                FlutterLogo(
                  size: 100.0,
                )
              ],
            ),
            actions: [
              TextButton(onPressed: ()=>Navigator.of(context).pop(), child: const Text('Aceptar')),
              TextButton(onPressed: ()=>Navigator.of(context).pop(), child: const Text('Cancelar')),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mesa que mas aplauda'),
      ),
      body:  Center(
        child: ElevatedButton(
          onPressed: ()=>_mostrarAlert(context),
          child: const Text('vea esto'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.keyboard_return_sharp),
      ),
    );
  }
}
