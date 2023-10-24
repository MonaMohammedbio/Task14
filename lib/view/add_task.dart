


import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapproundthree/generated/l10n.dart';
import 'package:todoapproundthree/model/task.dart';
import 'package:todoapproundthree/view_model/view_model.dart';

class AddTask extends StatelessWidget {
   AddTask({super.key});

  final textuser = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return   Consumer<ViewModel>(builder: (context , viewmodel ,child  ){

      return  FloatingActionButton(child: Icon(Icons.add), onPressed: (){


        Navigator.push(context, MaterialPageRoute(builder: (context)=>    AlertDialog(
          title: new Text(S.of(context).title),
          content: new Text(S.of(context).titleofawason),
          actions: <Widget>[
            TextField(
               controller: textuser ,
              decoration: InputDecoration(
                  label: Text("username")
              ),
            ),
            TextButton(
              child: new Text("OK"),
              onPressed: () {

                Task x = Task(textuser.text, false);
                viewmodel.addtask(x );
                print(textuser.text);
                textuser.clear();
                //    ViewModel viewmode = new ViewModel();
                //    viewmode.adduser(text.text as UsersModel);
                Navigator.of(context).pop();

              },
            ),
          ],
        )  ))
        ;

      },)  ;
    })  ;
  }
}
