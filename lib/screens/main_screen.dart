import 'package:calculator_app/widgets/keypad.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final ScrollController _scrollController2 = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: TextField(
              readOnly: true,
              textAlign: TextAlign.right,
              controller: _controller1,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w400,
                color: Colors.white54,
              ),
              decoration: const InputDecoration(border: InputBorder.none),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: TextField(
              readOnly: true,
              textAlign: TextAlign.right,
              controller: _controller2,
              scrollController: _scrollController2,
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              decoration: const InputDecoration(border: InputBorder.none),
            ),
          ),
          Keypad(
            controller1: _controller1,
            controller2: _controller2,
            scrollController: _scrollController2,
          ),
        ],
      ),
    );
  }
}
