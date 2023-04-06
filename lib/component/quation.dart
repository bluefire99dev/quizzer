class Quation {
  late String quationText;
  late bool quationAnswer;

  Quation({required String q, required bool a}) {
    quationText = q;
    quationAnswer = a;
  }
}

//object
Quation newQuastion = Quation(a: true, q: 'text');
