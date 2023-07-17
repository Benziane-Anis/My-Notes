import 'package:flutter/material.dart';

class MyTexteField extends StatelessWidget {

  const MyTexteField({super.key, required this.hint,  this.maxLInes=1, required this.onSaved});

  final String hint;
  final int maxLInes;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if(value?.isEmpty ?? true){
          return 'feild id required';
        }
      },
      maxLines: maxLInes,
      style: const TextStyle(fontSize: 22),
      cursorColor: Colors.tealAccent,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.tealAccent,fontSize: 22,),
        focusedBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: const BorderSide(color: Colors.tealAccent)
        ),
        enabledBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.white)
        ),
      ),
    );
  }
}
