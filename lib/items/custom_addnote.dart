import 'package:flutter/material.dart';
import 'package:my_notes/items/custom_textfield.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTexteField()
      ],
    );
  }
}
