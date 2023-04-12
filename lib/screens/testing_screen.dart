// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gd_textbook/models/question_model.dart';

class TestingScreen extends StatefulWidget {
  final String name;
  TestingScreen({
    super.key,
    required this.name,
  });

  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  State<TestingScreen> createState() => _TestingScreenState();
}

class _TestingScreenState extends State<TestingScreen> {
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Text(
            "Salom, ${widget.name}",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          _questionWidget(),
          _answerList(),
          _nextButton(),
        ]),
      ),
    );
  }

  _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Savol ${currentQuestionIndex + 1}/${questionList.length.toString()}",
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            questionList[currentQuestionIndex].questionText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answersList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 48,
      child: ElevatedButton(
        child: Text(
          answer.answerText,
          textAlign: TextAlign.center,
        ),
        style: ElevatedButton.styleFrom(
          foregroundColor: isSelected ? Colors.white : Colors.black,
          backgroundColor: isSelected ? Colors.orangeAccent : Colors.white,
          shape: const StadiumBorder(),
        ),
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.isCorrect) {
              score++;
            }
            setState(() {
              selectedAnswer = answer;
            });
          }
        },
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }

    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        child: Text(isLastQuestion ? "Tugatish" : "Keyingi"),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.deepPurple,
          shape: const StadiumBorder(),
        ),
        onPressed: () {
          if (isLastQuestion) {
            //display score

            showDialog(context: context, builder: (_) => _showScoreDialog());
          } else {
            //next question
            setState(() {
              selectedAnswer = null;
              currentQuestionIndex++;
            });
          }
        },
      ),
    );
  }

  _showScoreDialog() {
    return AlertDialog(
      title: Text(
        widget.name + ", sizning balingiz : $score",
      ),
      content: ElevatedButton(
        child: const Text("Qayta boshlash"),
        onPressed: () {
          Navigator.pop(context);
          setState(() {
            currentQuestionIndex = 0;
            score = 0;
            selectedAnswer = null;
          });
        },
      ),
    );
  }
}
