import 'package:flutter/material.dart';

class Intropage1 extends StatelessWidget {
  const Intropage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Image.asset('assets/images/onboard1.jpg', fit: BoxFit.cover),
    );
  }
}
