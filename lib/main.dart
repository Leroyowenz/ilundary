import 'package:flutter/material.dart';
import 'package:ilundary/lundary_data.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( 
        appBar: AppBar(
          backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text("iLuandry"),
        //leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.add)],
      ),
        drawer: const Drawer(),
        body: Center(
          child: Column(
            children: const [
               Text("Counter", 
               style: TextStyle(
                fontSize: 40, 
                fontWeight: FontWeight.w700, 
                fontStyle: FontStyle.italic
                ),
               ),
               AddCount(),
               
            ],
          ),
        ),
      ),
    );
  }
}