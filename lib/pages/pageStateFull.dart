import 'package:flutter/material.dart';

class PageStateFull extends StatefulWidget {
  final String texto;
  const PageStateFull(this. texto, {super.key});

  @override
  State<PageStateFull> createState() => _PageStateFullState();
}

class _PageStateFullState extends State<PageStateFull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("StateFluu"),),
      body: Center(child: Text(Widget. texto),
      ),
    );
  }
}