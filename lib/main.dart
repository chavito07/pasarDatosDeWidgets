import 'package:flutter/material.dart';
import 'package:pasar_datos_de_widgets/pages/PageStateless.dart';
import 'package:pasar_datos_de_widgets/pages/pageStateFull.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {

    TextEditingController _textoControler = TextEditingController(text: "");

    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar de chavito'),
      ),
      body: Column(
        children: [
          Container(padding: EdgeInsets.all(20), 
           decoration: BoxDecoration( 
              color: Colors.grey[600], 
            ),
            child: TextField( 
              controller: _textoControler,
              decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: Colors.grey[300], 
                filled: true,
                hintText: "Ingrsas informacion "
              ),
            ),
          ),
          TextField(), // TextField adicional sin cambios
          ElevatedButton(
            onPressed: () {
              // print(_textoControler.text);
              Navigator.push(context, MaterialPageRoute(builder: (context) => 
               PageStateless(_textoControler.text)));
            }, 
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            child: Text("Ir a la página uno"),
          ),
          ElevatedButton(
            onPressed: () {
              // print(_textoControler.text);
              Navigator.push(context, MaterialPageRoute(builder: (context) => 
               PageStateFull(_textoControler.text)));
            }, 
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            child: Text("Enviar a Statefull"),
          )         
        ],
      ),
    );
  }
}

