import 'package:flutter/material.dart';

class RoomMainScreen extends StatefulWidget {
  const RoomMainScreen({super.key});

  @override
  State<RoomMainScreen> createState() => _RoomMainScreenState();
}

class _RoomMainScreenState extends State<RoomMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("This is Room Main Screen."),
      ),
    );
  }
}
