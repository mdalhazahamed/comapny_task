import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.amber,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Search"),
      ),
      body: Center(
        child: Text("Search Screen"),
      ),
    );
  }
}