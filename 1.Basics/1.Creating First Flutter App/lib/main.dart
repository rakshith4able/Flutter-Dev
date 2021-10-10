import 'package:flutter/material.dart';

//In FLutter App the Execution Starts from main()
//It includes runApp() which takes the widget as parameter to load it
//We end the widgets with comma(,)

//We can reformat the code by dart format by right-click

//Scaffold() widget is provides us with the most common layouts in the basic material design, like an appBar
//single quotes are preferred to use
//To wrap widget within another widget we can plcae cursor on the widget to be wrapped and press alt + enter
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          title: Text('I am Rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1633603063175-e9ab2820ddbb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1112&q=80'),
          ),
        ),
      ),
    ),
  );
}
