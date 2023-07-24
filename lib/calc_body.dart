import 'package:flutter/material.dart';
import 'dart:math';

Random random = Random();

class CalcBody extends StatefulWidget {
  const CalcBody({super.key});

  @override
  State<CalcBody> createState() => _CalcBodyState();
}

class _CalcBodyState extends State<CalcBody> {
  int process = 0;
  int ranNum = 0;
  String result = '';
  String name = 'undefined';
  String partnerName = 'undefined';

  final nameController = TextEditingController();
  final partnerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 240.0,
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter Your Name'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 240.0,
            child: TextField(
              controller: partnerController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Partner\'s Name'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  ranNum = random.nextInt(100);
                  name = nameController.text;
                  partnerName = partnerController.text;
                });
              },
              child: const Text('Calculate Love')),
          const SizedBox(
            height: 10,
          ),
          Text('$name and $partnerName love each other $ranNum%.'),
        ],
      ),
    );
  }
}
