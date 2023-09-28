import 'package:flutter/material.dart';

class CoustomSignWith extends StatelessWidget {
  final String imagesignwith;
  final void Function()? onPressed;

  const CoustomSignWith({super.key, required this.imagesignwith,required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Image.asset(
        "Images/$imagesignwith",
        fit: BoxFit.fill,
      ),
    );
  }
}
