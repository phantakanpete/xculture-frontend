import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  final String label;
  bool? isMultiText; 

  TextForm({ Key? key, 
    required this.label, 
    this.isMultiText = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: isMultiText==false?TextFormField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(),
        ),
      ):TextFormField(
        maxLines: 10,
        keyboardType: TextInputType.multiline,
        decoration: InputDecoration(
          hintText: label,
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}