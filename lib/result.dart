import 'package:flutter/material.dart';
class Result extends StatelessWidget{
  final int Score;
  Result(this.Score);

  String get resultPhrase{
    var resultText="You did it!";
    if(Score<=50){
    resultText="You are awsome and innocent."; 
  }
  else if(Score<=60){
    resultText="Pretty likeley";
  }
  else{
    resultText="you are bad";
  }
  return resultText;
  }

  @override
  Widget build(BuildContext context){
    return Center(child: Text(resultPhrase, style:TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),);
  }

}