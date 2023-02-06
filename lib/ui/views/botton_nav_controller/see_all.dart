

import 'package:flutter/material.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("See All"),
      ),
      body: Center(
        child: Text("see all"),
      ),
    );
  }
}
