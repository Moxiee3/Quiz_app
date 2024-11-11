import 'package:flutter/material.dart';
import 'package:quiz_app/color/color.dart';
import 'package:quiz_app/screen/splash_screen.dart';

class ResultScreen extends StatelessWidget {
  final int correctAnswers;
  final int incorrectAnswers;
  final int totalQuestion;
  const ResultScreen(
      this.correctAnswers, this.incorrectAnswers, this.totalQuestion,
      {super.key});

  @override
  Widget build(BuildContext context) {
    double correctPercentage = (correctAnswers / totalQuestion * 100);
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              blue,
              darkBlue,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Congratulation You Got",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                "${correctPercentage.toStringAsFixed(1)}%",
                style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                "Correct Answer: $correctAnswers",
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              Text(
                "inCorrect Answer: $incorrectAnswers",
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SplashScreen()));
                  },
                  child: const Text("Back to Home"))
            ],
          ),
        ),
      ),
    );
  }
}
