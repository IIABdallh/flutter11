import 'package:flutter/material.dart';

class Coustomtextformfield extends StatelessWidget {
  final String? Function(String?)? validator;
  final String title;
  final String hinttext;
  final TextEditingController mycontroller;

  const Coustomtextformfield(
      {super.key,
      required this.title,
      required this.hinttext,
      required this.mycontroller,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "$title",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        SizedBox(height: 9,),
        TextFormField(
          validator: validator,
          controller: mycontroller,
          decoration: InputDecoration(
            hintText: "$hinttext",
            hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide(color: Color.fromRGBO(194, 192, 192, 1)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide(color: Color.fromRGBO(194, 192, 192, 1)),
            ),
          ),
        ),
      ],
    );
  }
}
