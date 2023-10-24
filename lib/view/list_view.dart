

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapproundthree/view_model/view_model.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return

      Consumer<ViewModel>(builder: (context ,viewmodel ,child ){   
        
        return    Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
            child: ListView.separated(
              padding: EdgeInsets.all(15),
              separatorBuilder: (context , index) {
                return SizedBox(height: 10);
              },
              itemCount:viewmodel.getlenthtask() , //opration//
              itemBuilder: (context , index) {
                return Dismissible(
                  key: UniqueKey(),
                  onDismissed: (direction) {
                    //  HapticFeedback.mediumImpact();
                    //   viewModel.deleteTask(index);
                    viewmodel.delettask(index);
                  },
                  background: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.red.shade300,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Icon(Icons.delete, color: Colors.red.shade700)),
                  ),  //bacl delet icon
                  child: Container(
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(20)),
                    child: ListTile(
                        leading: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          side: BorderSide(width: 2),
                          checkColor: Colors.cyan,
                          activeColor: Colors.yellow,
                          value: viewmodel.getvlauoftask(index),

                          onChanged: (value){

                                viewmodel.settaskvlue(index, value!);
                          },

                          //  viewModel.setTaskValue(index, value!);
                          // },
                        ),
                        title: Text( viewmodel.gettitkeoftask(index)     ,
                            style: TextStyle(

                                fontSize: 17,
                                fontWeight: FontWeight.w500)),
                          trailing:  IconButton(
                            icon:  Icon(Icons.delete),
                            onPressed: (){

                              viewmodel.delettask(index);
                            },
                          )  ,

                    ),

                  ),
                );
              },
            ))
        ;
      })
    ;
  }
}
