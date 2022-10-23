import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  final VoidCallback selectHandler;
  String ans;
  Answer(this.selectHandler, this.ans);
  @override

  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
     margin: EdgeInsets.only(left: 30, right: 30),
      child: ElevatedButton(
        onPressed: selectHandler, 
        child: Text(ans),
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black), 
              foregroundColor: MaterialStateProperty.all(Colors.white )),
      ),

    );
  }
}