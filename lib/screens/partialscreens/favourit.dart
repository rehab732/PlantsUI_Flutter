import 'package:flutter/material.dart';

import '../../constants/color.dart';

class FavoruitPage extends StatefulWidget {
  const FavoruitPage({super.key});

  @override
  State<FavoruitPage> createState() => _FavoruitPageState();
}

class _FavoruitPageState extends State<FavoruitPage> {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(
        title:const Text('Root Page'),
        backgroundColor: Maincolors.primaryColor,
      ),
      body: const Center(child: Text('test')),
    );
  }
}