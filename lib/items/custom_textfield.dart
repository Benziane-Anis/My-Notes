import 'package:flutter/material.dart';

class MyTexteField extends StatelessWidget {
  const MyTexteField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 22),
      cursorColor: Colors.tealAccent,
      decoration: InputDecoration(
        hintText: "Title",
        hintStyle: TextStyle(color: Colors.tealAccent,fontSize: 22,),
        focusedBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide(color: Colors.tealAccent)
        ),
        enabledBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.white)
        ),
      ),
    );
  }
}
