import 'package:flutter/material.dart';
import 'package:my_notes/items/custom_editNote.dart';

class Edit extends StatelessWidget {
  const Edit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only( top: 5.0,
                bottom: 5,
                right: 18
            ),
            child: Container(
              //height: 40,
              width:50,
              decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: const BorderRadius.all(Radius.circular(15))
              ),
              child: IconButton(onPressed: () {

              }, icon: const Icon(Icons.check,size: 28,)),
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        title: const Text("Edit Note",style: TextStyle(fontSize: 30),),
      ),
      body: SafeArea(child: EditNoteViewBody()),
    );
  }
}
