import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 24,),
      decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text("Flutter Tips",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black),),
            subtitle: Padding(
              padding:  EdgeInsets.only(top: 10.0),
              child: Text("data kbiira hhh",style: TextStyle(color: Colors.black),),
            ),
            trailing: IconButton(onPressed: () {

            }, icon: Icon(Icons.delete,
              size: 36,
              color: Colors.black,)),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 60.0),
            child: Text("May21 , 2023",style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black),),
          ),
        ],
      ),
    );
  }
}