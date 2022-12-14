import 'package:flutter/material.dart';

class AddCount extends StatefulWidget {
  const AddCount({super.key});

  @override
  State<AddCount> createState() => _AddCountState();
}

class _AddCountState extends State<AddCount> {
  int counter = 0;

  addCounter() {
    setState(() {
      counter++;
    });
  }

  subCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () {
              addCounter();
            },
            child: const Text("Add")),
        Text(
          "$counter",
          style: const TextStyle(fontSize: 25.0),
        ),
        ElevatedButton(
            onPressed: () {
              if (counter <= 0) {
                //
              } else {
                setState(() {
                  counter--;
                });
              }
            },
            child: const Text("Sub"))
      ],
    );
  }
}
