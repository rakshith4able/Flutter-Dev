import 'package:flutter/material.dart';

//In FLutter App the Execution Starts from main()
//It includes runApp() which takes the widget as parameter to load it
//We end the widgets with comma(,)

//We can reformat the code by dart format by right-click

void main() {
  runApp(
    MaterialApp(
      home: Center(
        child: Text(
          "Hello World!",
        ),
      ),
    ),
  );
}
