import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class menu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
     return Scaffold(
       appBar: AppBar(title: Text('Menu')),
     body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             ElevatedButton(
               onPressed: () {
                 // Handle button press
                 print('Button 1 pressed');
               },
               child: Text('Level 1'),
             ),
             SizedBox(height: 20), // Add some spacing between buttons
             ElevatedButton(
               onPressed: () {
                 // Handle button press
                 print('Button 2 pressed');
               },
               child: Text('Level 2'),
             ),
           ],
         ),
       ),
     );
  }
}