

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapproundthree/view/deleteview.dart';
import 'package:todoapproundthree/view_model/view_model.dart';

import 'changesuername.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return

    Consumer<ViewModel>(builder:(context , viewmodel ,child){

      return    Row(
        children: [

          Expanded( flex:3,child: Text("Welcome  ${viewmodel.getusername()}")),
          Expanded( flex:1,child: IconButton( onPressed: () {

            viewmodel.botomsheetbuild(DeleteBottomSheetView(), context);

          }, icon: Icon(Icons.delete),),),
          Expanded( flex:1,child: IconButton( onPressed: () {

            
            viewmodel.botomsheetbuild(SettingsBottomSheetView(), context);

            //   viewModel.bottomSheetBuilder(DeleteBottomSheetView(), context);

          }, icon: Icon(Icons.settings),),)

        ],
      ) ;
    })


      ;
  }
}
