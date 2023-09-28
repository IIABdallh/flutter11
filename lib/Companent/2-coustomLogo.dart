import 'package:flutter/material.dart';

class CoustomLogo extends StatelessWidget {
  final String imagelogo;

  const CoustomLogo({super.key, required this.imagelogo});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 100,
      height: 100,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(200),
      ),
      child: Image.asset(
        "Images/$imagelogo",
        width: 70,
        height: 70,
        fit: BoxFit.fill,
      ),
    );
  }
}
