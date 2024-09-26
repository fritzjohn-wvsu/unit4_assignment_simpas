import 'package:flutter/material.dart';

class header extends StatelessWidget {
  const header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: AppBar(
        toolbarHeight: 50,
        title: const Text("Fritz John Simpas",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        backgroundColor: Color(0xFFF0E68C),
      ),
    );
  }
}
