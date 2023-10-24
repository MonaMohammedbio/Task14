

import 'package:flutter/material.dart';
import 'package:todoapproundthree/model/task.dart';
import '../model/users.dart';

class ViewModel extends ChangeNotifier{

  //  Task task = Task("title", false) ;
  //List<User> users = <User>[];
//attributes

  List<Task> tasks = <Task>[];
  User user = User("Ahmed Megahed");


  void updatemyusername (String newusername){
    user.username = newusername;
    notifyListeners();


  }


  //String get username => user.username;

  String getusername(){

    return user.username;
  }

//  int get number =>tasks.where((task) => !task.complete ).length;

  int numberofnotcom(){

    return  tasks.where((task) => !task.complete ).length  ;
  }

 // int get getlinthtask => tasks.length;

  int getlenthtask(){

    return tasks.length;
  }

  void settaskvlue ( int taskindex , bool taskvalue  ){

    tasks[taskindex].complete = taskvalue;

    notifyListeners();
  }


  void addtask( Task newobject  ){

    tasks.add(newobject);
    print(newobject);
    notifyListeners();
  }

  void deletalltasks(){

    tasks.clear();
    notifyListeners();
  }


  void delettask( int taskindex){

    tasks.removeAt(taskindex);
    notifyListeners();
  }

  void deletcompletedtask(){

    tasks = tasks.where((task) => !task.complete).toList();
    notifyListeners();
  }


  String gettitkeoftask(int index){

    return tasks[index].title ;
  }

  bool getvlauoftask(int index){

    return tasks[index].complete;
  }


  void botomsheetbuild( Widget botomsheet , BuildContext context){

    showBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        context: context, builder: ( context){

      return botomsheet;

    });
  }



}