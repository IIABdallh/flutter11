import 'package:flutter/material.dart';

class CoustomButton extends StatelessWidget {
  final String buttonName;
  final void Function()? onPressed;

  CoustomButton({required this.buttonName, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
          color: Colors.blue,
          onPressed: onPressed,
          child: Text(
            buttonName,
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
