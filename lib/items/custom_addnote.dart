import 'package:flutter/material.dart';
import 'package:my_notes/items/custom_textfield.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: AddNote(),
      ),
    );
  }
}

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  final GlobalKey<FormState> formeKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formeKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          MyTexteField(
              onSaved: (value) {
                title = value;
              },
              hint: 'Title',
              maxLInes: 1),
          const SizedBox(
            height: 10,
          ),
          MyTexteField(
              onSaved: (value) {
                title = value;
              },
              hint: "Content...",
              maxLInes: 5),
          const SizedBox(
            height: 100,
          ),
          MaterialButton(
            onPressed: () {
              if(formeKey.currentState! .validate()){
                formeKey.currentState!.save();
              }else{
                autovalidateMode = AutovalidateMode.always;
                setState(() {

                });
              }
            },
            height: 50,
            textColor: Colors.black,
            color: Colors.tealAccent,
            minWidth: MediaQuery.of(context).size.width,
            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
            child: const Text(
              'ADD',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 225,
          )
        ],
      ),
    );
  }
}
