import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quizzer/component/quation.dart';

class Quation {
  late String quationText;
  late bool quationAnswer;

  Quation({required String q, required bool a}) {
    quationText = q;
    quationAnswer = a;
  }
}
