import 'package:quizeee/question.dart';

class QuizBrain {

 int _questionNumber = 0;

 List <Question> _questionBank = [ 
    Question(q:'You can lead a cow down stairs but not up stairs.', a:false  ),
    Question( q:'Approximately one quarter of human bones are in the feet.',a: true),
    Question(q: 'A slug\'s blood is green.', a: true),
  ];

   void nextQuestion() {
     if(_questionNumber< _questionBank.length-1){
      _questionNumber++;
     }
  else if( _questionNumber==_questionBank.length-1){
    _questionNumber=0;
  }
 }

  bool getQuestionAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }

  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }

  bool isFinished() {
    if (_questionNumber>= _questionBank.length-1){
      print('Now returning true');
      return true;
    }
    else {
      return false;
    }
  }

  void reset(){
    _questionNumber = 0;
  }
}