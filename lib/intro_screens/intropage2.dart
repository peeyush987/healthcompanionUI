import 'package:flutter/material.dart';

class Intropage2 extends StatelessWidget {
  const Intropage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Image.asset('assets/images/onboard2.jpg', fit: BoxFit.cover),
    );
  }
}
