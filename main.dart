import 'package:flutter/material.dart';


/*
The purpose of this syntax is to import the flutter material design library widgets, tools for building a material design UI google design system

import - dart keyword to include external libraries

package:flutter - refers to the material design packages

this is essential for building flutter apps w/ a standard UI
 */

void main(){
  runApp(const Myapp()); // flitter function that initialize the app and attaches root widgets (Myapp()) to screen
}

class Myapp extends StatelessWidget { // Myapp Extends custom class
  // stateless widgets - base class for widgets that do not hold mutable

  const Myapp ({super.key});

  @override // indicates the method overrides the statelessWidgets
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: const Text('My Title App'),
    ),
    body:  Center (
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/el.jpg',
          width: 500,
          height: 500,
          ),
    const Text(
    'Stranger Things',
    style: TextStyle(fontSize: 50),
    ),
          const Text (
            'Synopsis'
          ),
          const Text (
            'Set in the 1980s, the series centers on the residents of the fictional small town of Hawkins, Indiana,after a nearby human \nexperimentation facility opens a gateway between Earth and a hostile alternate dimension known as the Upside Down.'
          )
  ],
),
)
    );

}
}