import 'package:flutter/material.dart';

class Intropage3 extends StatelessWidget {
  const Intropage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Image.asset('assets/images/onboard3.jpg', fit: BoxFit.cover),
    );
  }
}
