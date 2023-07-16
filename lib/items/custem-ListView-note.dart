import 'package:flutter/material.dart';
import 'package:my_notes/items/custem_note.dart';

class ListViewNotes extends StatelessWidget {
  const ListViewNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: NoteItem(),
      );
    },);
  }
}