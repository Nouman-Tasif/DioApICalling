
import 'package:flutter/material.dart';
class TextWidget extends StatelessWidget {
  String title;


    TextWidget({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,
     style: const TextStyle(fontSize: 15,color: Colors.black),);
  }
}
