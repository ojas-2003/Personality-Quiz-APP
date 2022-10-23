import'./question.dart';
import './answer.dart';

import 'package:flutter/material.dart';

class Quiz extends StatelessWidget{
  
  
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({required this.questions, required this.questionIndex, required this.answerQuestion}) ;
  @override 
  Widget build(BuildContext context){
    return  Column(children: [
          Questions(questions[questionIndex]['questionText'].toString()),

          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((question){ // here ... is called spred opperator which takes values out
            return Answer(()=>answerQuestion(question['score']), question['text'] as String);                               //of nested list and put it in the main list.
          }).toList()
    ])
      

    ;
  }
}