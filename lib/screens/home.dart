import 'package:flutter/material.dart';
import 'package:my_notes/items/custem-ListView-note.dart';
import 'package:my_notes/items/custem_note.dart';

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
                borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              child: IconButton(onPressed: () {

              }, icon: Icon(Icons.search_sharp,size: 28,)),
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        title: Text("Notes",style: TextStyle(fontSize: 30),),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListViewNotes()
        ),
      ),
      floatingActionButton:  FloatingActionButton(onPressed: () {  },child: Icon(Icons.add)),
    );
  }
}



