import 'question.dart';

class QuizBrain {

  // The number of the current question, which is private ( _ )
  int _questionNumber = 0;

  // The list for the questions
  List<Question> _questionBank = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),

  ];

  void nextQuestion() {
    // check if the current question is less than the number of questions, minus one
    if (_questionNumber < _questionBank.length - 1) {

      // if the above is true, increment the question
      _questionNumber++;
    }
    print("The question number: $_questionNumber");
    print(_questionBank.length - 1);
  }

  bool isFinished() {
    if(_questionNumber >= _questionBank.length - 1) {

      return true;
    } else {
      return false;
    }
  }

  // Get the text for the question by going into the question bank for the question # and getting the text
  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  // retrieve the answer for the current question number
  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

}