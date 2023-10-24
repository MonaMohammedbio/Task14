

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapproundthree/view_model/view_model.dart';

class TaskInfo extends StatelessWidget {
  const TaskInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return

     Consumer<ViewModel>(builder: (context ,viewmode ,child){
       return   Row(
         children: [
           Expanded(child: Card(
             child: Column(
               children: [
                 Text("Total Task"),
                 Text(" number is  ${viewmode.getlenthtask()}  "),//opration
               ],
             ),

           )),
           Expanded(child: Card(
             child: Column(
               children: [
                 Text("Remaining Task"),
                 Text(" number is ${viewmode.numberofnotcom()} " ),
               ],
             ),

           )),

         ],
       ) ;
     })
      ;
  }
}
