import 'package:flutter/material.dart';

class NoInternetPage extends StatefulWidget {
  const NoInternetPage({super.key});

  @override
  State<NoInternetPage> createState() => _NoInternetPageState();
}

class _NoInternetPageState extends State<NoInternetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF339966),
        title: const Text("No Internet"),
      ),
      body: SafeArea(
        child: Image.asset(
          "assets/no_internet.gif",
          height: double.infinity,
          fit: BoxFit.cover,
        )
      ),
    );
  }
}