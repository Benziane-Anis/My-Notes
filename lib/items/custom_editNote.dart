import 'package:flutter/material.dart';
import 'package:my_notes/items/custom_textfield.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 24),
      child: Column(

        children: const [
          MyTexteField(hint: "Titel"),
          SizedBox(height: 10,),
          MyTexteField(hint: "Content",maxLInes: 5),

        ],
      ),
    );
  }
}
