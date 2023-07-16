import 'package:flutter/material.dart';
import 'package:my_notes/items/custom_textfield.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32,),
            const MyTexteField(hint: 'Title',maxLInes: 1),
            const SizedBox(height: 10,),
            const MyTexteField(hint: "Content...",maxLInes: 5),
            const SizedBox(height: 100,),
            MaterialButton(onPressed: () {

            },
            height: 50,
              textColor: Colors.black,
              color: Colors.tealAccent,
              minWidth: MediaQuery.of(context).size.width,
              shape: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
              child: const Text('ADD',style: TextStyle(fontSize: 20),),
            ),
            const SizedBox(height: 225,)
          ],
        ),
      ),
    );
  }
}
