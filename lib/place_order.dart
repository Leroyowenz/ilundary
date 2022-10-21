import 'package:flutter/material.dart';
import 'package:ilundary/lundary_data.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({super.key});

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Place Order"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Enter the details of your lundary orders then click to proceed",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto"),
                ),
              ),
              const Divider(
                color: Colors.blue,
                thickness: 2,
              ),

              // const Padding(
              //   padding: EdgeInsets.all(20),
              //   child: TextField(
              //     decoration: InputDecoration(
              //         hintText: '''Enter the details of your lundary
              //              orders then click to proceed'''),
              //   ),
              // ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "CLOTH TYPE",
                      hintText: "e.g T-Shirt"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Cloth Color",
                    hintText: "e.g red or green",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Price",
                    hintText: "₦",
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.fromLTRB(20, 1, 310, 4),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: "Quantity"),
                ),
              ),

              // const Divider(
              //   color: Colors.blue,
              //   thickness: 2,
              // ),

              const AddCount(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Proceed"),
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.pop(context);
              //   },
              //   child: const Text("Go Back"),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
