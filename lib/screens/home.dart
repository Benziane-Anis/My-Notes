import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
            
          }, icon: Icon(Icons.search_sharp,))
        ],
        backgroundColor: Colors.transparent,
        title: Text("Notes",style: TextStyle(fontSize: 30),),
      ),
      body: SafeArea(
        child: Container(),
      ),
      floatingActionButton:  FloatingActionButton(onPressed: () {  },child: Icon(Icons.ad)),
    );
  }
}
