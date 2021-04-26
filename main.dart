import 'package:flutter/material.dart';

import 'lista.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de compras',
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: Home(),
      );
  }
}

class Home extends StatelessWidget{
  const Home({
    Key key,
})  : super(key: key);
  @override
  Widget build(BuildContext context){

    TextEditingController _texto = TextEditingController(text: "");

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de compra'),
      ),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: _texto,
                decoration: InputDecoration(
                  hintText: 'Añadir producto'
                ),
          )),
          // ignore: deprecated_member_use
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Lista(_texto.text)));
          },
            child: Text('Guardar'),
          )
        ],
      ),
    );
  }
}

