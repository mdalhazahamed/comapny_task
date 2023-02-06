import 'package:flutter/material.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.amber,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Saved"),
      ),
      body: Center(
        child: Text("Saved Screen"),
      ),
    );
  }
}