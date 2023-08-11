import 'dart:async';

import 'package:delvee/controller_page.dart';
import 'package:flutter/material.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {

  late final Timer _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer(
      const Duration(seconds: 3), 
      () => Navigator.pushReplacement(
        context, 
        MaterialPageRoute(
          builder: (context) => const ControllerPage()
        ),
      )
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/delvee_logo.png",
              width: 150,
            ),
            const SizedBox(
              width: double.infinity,
              height: 50,
            ),
            const CircularProgressIndicator()
          ],
        )
      ),
    );
  }
}