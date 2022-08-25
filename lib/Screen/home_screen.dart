import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key, required Center body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(

    backgroundColor: Colors.indigo,
    appBar: AppBar(
      title: const Text('Home Screen'),

    ),
    body: const Center(
      child: Text('Nuestro Primer Texto Centrado'),
    ),
  
  );
  }


}