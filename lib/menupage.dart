import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menugrid.dart';

class menupage extends StatefulWidget {
  const menupage({super.key});

  @override
  State<menupage> createState() => _menupageState();
}

class _menupageState extends State<menupage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('merve'),
      ),
      body: Container(
        child: MenuGrid(),
      ),
    );
  }
}
