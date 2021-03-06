import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Hot reload to instantaniously rebuild the items on the screen we need to use build method which stateless and statefull widgets contain
//To create stateless component we use shortcut stless [enter]
//The thunder icon in the console below is hot reload
//Hot reload automatically triggers on save
//When we change something in staeless widget the hot reload works so fast
//Because it downs not run the whole app from start again
//Instead it rebuilds only the changed widget
//Hot reload doesnt change the state of the app

//The green button next to hot reload is hot restart.
//Hot restart resets the state and starts from the start.

//Layout Widgets  Contains both single child and multi child widgets

//Most commonly used single child widget is container
//Container is similar to div in web development and is used to layout contents on the scree
//Container without any child takes full available space in screen
//WHen we add a child the size of the container becomes the size of the child widget it contains
//If we dont want child in container to be placed in notch area or any other interactive area on the screen we can use SafeArea widget
//We can specify width and height to container with a unitless number
//To specify margin and padding we have to use EdgeInsets.All - all 4 sides,
//EdgeInsets.symmetric(vertical:,horizontal:)-To give horizontally and vertically
//EdgeInsets.fromLTRB(,,,)- To give margin to left top right and bottom
//EdgeInsets.only(left:),EdgeInsets.only(right:)- to give to only top,bottom,left or right
//We can visualize  margin by going to flutter inspector and and clicking on guidelines icon

//Multiple child widgets includes rows, columns etc..
//children:<Widget>[] ->we can add as many widgets we want inside the square brackets
//Columns take up as much as the vertical space available- We can change it using prop MainAxisSize with min
//We can change its vertical direction i.e, top to bottom or bottom to top
//MainAxisAlignment by default for column is start we can give other values like end or center or spacearound,evenly,between
//crossAxisAlignment is used to align in direction perpendicular to main axis.
//We can create invisible container that takes infinite width like width:double.infinity
//If we want some space bw the containers as children in cloumn use sizedBox() which can have height or width or both
//Rows also have similar properties to columns
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.red,
                width: 100.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.yellow,
                    width: 100.0,
                    height: 100.0,
                  ),
                  Container(
                    color: Colors.green,
                    width: 100.0,
                    height: 100.0,
                  ),
                ],
              ),
              Container(
                color: Colors.blue,
                width: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
