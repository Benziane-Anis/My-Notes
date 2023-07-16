import 'package:flutter/material.dart';
import 'package:my_notes/items/custem-ListView-note.dart';
import 'package:my_notes/items/custom_addnote.dart';


class Home extends StatelessWidget {
  const Home({super.key});

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

              }, icon: const Icon(Icons.search_sharp,size: 28,)),
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        title: const Text("Notes",style: TextStyle(fontSize: 30),),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: ListViewNotes()
        ),
      ),
      floatingActionButton:  FloatingActionButton(onPressed: () {
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          context: context, builder: (context) {
          return const AddNoteButtomSheet();
        },);
      },child: const Icon(Icons.add)),
    );
  }
}





