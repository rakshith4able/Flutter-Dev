import 'package:flutter/material.dart';

//In FLutter App the Execution Starts from main()
//It includes runApp() which takes the widget as parameter to load it
//We end the widgets with comma(,)

//We can reformat the code by dart format by right-click

//Scaffold() widget is provides us with the most common layouts in the basic material design, like an appBar
//single quotes are preferred to use
//To wrap widget within another widget we can plcae cursor on the widget to be wrapped and press alt + enter

//To add images stored as an asset in our project
//Create folder named images in project directory
//drag and drop the diamond image into the folder
//But still it is not ready to use Because we have to configure in the configuration file pubspec.yaml
//pubspec.yaml contains many comments with #
//We have to take care of indentation. each indent is of 2 spaces and is considered child of the above section
//To specify all the contents of a folder as an asset we can just specify folderName/
//To import all of the configured assets we have to click on pub get button present at the top.
//use the asset image in Image
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
            image: AssetImage('images/diamond.png'),
          ),
        ),
      ),
    ),
  );
}
