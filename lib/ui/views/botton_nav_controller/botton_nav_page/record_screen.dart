import 'package:flutter/material.dart';

class RecordScreen extends StatelessWidget {
  const RecordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.amber,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Record"),
      ),
      body: Center(
        child: Text("Record Screen"),
      ),
    );
  }
}