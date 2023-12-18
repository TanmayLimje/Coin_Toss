import 'package:coin_toss/toss_coin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Toss a coin",
            textAlign: TextAlign.center,
            // style: TextStyle(
            //   color: Colors.cyanAccent,
            //   fontWeight: FontWeight.bold,
            //   backgroundColor: Colors.black,
            // ),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 40, 29, 196),
                Color.fromARGB(255, 12, 6, 96),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: TossCoin(),
          ),
        ),
      ),
    ),
  );
}
