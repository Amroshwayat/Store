import 'package:flutter/material.dart';
import 'package:store/Widgets/Home_view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 112, 113, 112),
      body: ViewBody(),
    );
  }
}
