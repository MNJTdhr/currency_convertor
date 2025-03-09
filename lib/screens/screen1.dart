import 'package:flutter/material.dart';
import 'package:currency_converter/constants/constants.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int dolla = 2;

  void onPressed() {
    setState(() {
      dolla = dolla * usdValue;
    });
  }

  void changeTheme() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("USD to INR"),
        actions: [
          TextButton.icon(onPressed: changeTheme, label: Icon(Icons.sunny)),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "₹ $dolla",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(),
                      style: TextStyle(color: Colors.blueGrey),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: onPressed,
                      child: Text("convert"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
