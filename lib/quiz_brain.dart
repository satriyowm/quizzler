import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(
        questionText: 'Sultan Muhammad Al-Fatih lahir 30 Maret 1432',
        questionAnswer: true),
    Question(
        questionText:
            'Sultan Muhammad Al-Fatih menaklukkan Konstantinopel diumur 21',
        questionAnswer: true),
    Question(
        questionText:
            'Sultan Muhammad Al-Fatih menaklukkan Konstantinopel diumur 23',
        questionAnswer: false),
    Question(
        questionText: 'Muhammad Al-Fatih diangkat menjadi sultan di umur 12',
        questionAnswer: true),
    Question(
        questionText:
            'Konstantinopel ditaklukkan oleh tentara Ottoman di bawah komando Sultan Mehmed II pada 29 Mei 1453',
        questionAnswer: true),
    Question(
        questionText:
            'Sultan Murad II adalah ayah dari Sultan Muhammad Al-Fatih',
        questionAnswer: true),
    Question(
        questionText: 'Hüma Hatun, salah satu selir Murad keturunan Utsmaniyah',
        questionAnswer: false),
    Question(
        questionText: 'Hüma Hatun, salah satu selir Murad keturunan Balkan',
        questionAnswer: true),
    Question(
        questionText:
            'Salah satu usaha Sultan Muhammad Al-Fatih untuk menaklukkan Konstantinopel adalah membangun benteng Romali Hishar',
        questionAnswer: true),
    Question(
        questionText:
            'Konstantinopel sulit ditaklukkan karena salah satunya memiliki 2 lapis benteng pertahanan yang kokoh',
        questionAnswer: false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  //TODO: Step 3 Part A - create isFinished method that checks the last questions.
  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('returning true');
      return true;
    } else {
      return false;
    }
  }

  //TODO: Menghitung jumlah pertanyaan
  int getTotalQuestions() {
    return _questionBank.length;
  }

  //TODO: Step 4 Part B - Create a reset() method that sets the questionNumber back to 0
  void reset() {
    _questionNumber = 0;
  }
}
