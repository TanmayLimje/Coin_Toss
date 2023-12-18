import 'package:flutter/material.dart';
import 'dart:math';

final ramdomizer = Random();

class TossCoin extends StatefulWidget {
  const TossCoin({super.key});

  @override
  State<TossCoin> createState() {
    return _Toss();
  }
}

class _Toss extends State<TossCoin> {
  var currentCoin = 1;

  void toss() {
    setState(() {
      currentCoin = ramdomizer.nextInt(2) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/coin-$currentCoin-removebg-preview.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: toss,
            style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                textStyle: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                )),
            child: const Text('Toss coin'))
      ],
    );
  }
}
