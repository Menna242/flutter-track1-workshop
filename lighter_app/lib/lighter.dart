// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LighterScreen extends StatefulWidget {
  const LighterScreen({super.key});

  @override
  State<LighterScreen> createState() => _LighterScreenState();
}

class _LighterScreenState extends State<LighterScreen> {
  bool switcher = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lightbulb,
              color: switcher == true ? Colors.yellow : Colors.grey,
              size: 70,
            ),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  if (switcher == false) {
                    switcher = true;
                  } else {
                    switcher = false;
                  }
                });
              },
              height: 50,
              color: switcher ? Colors.red : Colors.green,
              child: Text(
                switcher ? 'Off' : 'On',
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
    
  }
}