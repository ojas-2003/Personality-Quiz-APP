import 'package:first_app/answer.dart';
import 'package:first_app/quiz.dart';
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

// void main(){
//   runApp(MyApp());
// }

void main()=> runApp(MyApp());  



class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();  // leading underscore turns into a private class
  }
}

class _MyAppState extends State<MyApp>{
  var _questionIndex=0;


        final questions= const[
      {
        'questionText':'What\'s your favourite color ?',
        'answers':[{'text':'Black', 'score':10},{'text':'Red', 'score':20}, {'text':'Green', 'score':30}, {'text':'Blue', 'score':30}]
      },
      {
        'questionText':'What\'s your favourite animal?',
        'answers':[{'text':'cat', 'score':10},{'text':'Dog', 'score':20}, {'text':'Elephant', 'score':30}, {'text':'Cow', 'score':30}]
      },
      {
        'questionText':'What\'s your favourite Flower?',
        'answers':[{'text':'Rose', 'score':10},{'text':'Lily', 'score':20}, {'text':'Lotus', 'score':30}, {'text':'Sunflower', 'score':30}]
      },
      
  
      
    ];
  int Total_score=0;
  
  void answerQuestion(int score){
    if(_questionIndex< questions.length){
      print('we have more questions');
    }
    else{
      print('No more quetions');
    }

    Total_score+=score;
    setState(() {
      _questionIndex++;
    });
    
    print('answer chosen');
  }

  @override 
  Widget build(BuildContext context){


    return MaterialApp(home: Scaffold(
      appBar:AppBar(title: Text('My first App'),),
      body: _questionIndex<questions.length?
      Quiz(questions: questions, questionIndex:_questionIndex, answerQuestion: answerQuestion,)
      :Result(Total_score), 
      ),);
  }
}

