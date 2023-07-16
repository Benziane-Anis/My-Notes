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
            SizedBox(height: 32,),
            MyTexteField(hint: 'Title',maxLInes: 1),
            SizedBox(height: 10,),
            MyTexteField(hint: "Content...",maxLInes: 5),
            SizedBox(height: 100,),
            MaterialButton(onPressed: () {

            },
            height: 50,
              textColor: Colors.black,
              child: Text('ADD',style: TextStyle(fontSize: 20),),
              color: Colors.tealAccent,
              minWidth: MediaQuery.of(context).size.width,
              shape: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
            )
          ],
        ),
      ),
    );
  }
}
