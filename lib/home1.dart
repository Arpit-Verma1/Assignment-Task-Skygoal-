import 'package:flutter/material.dart';
class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Card(shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15)),
child: Stack(),
        )],
      ),
    );
  }
}
