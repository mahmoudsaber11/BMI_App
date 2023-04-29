import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(
      {super.key,
      required this.result,
      required this.isMale,
      required this.age});

  final double result;
  final bool isMale;
  final int age;

  String get resultphrase {
    String resultText = '';
    if (result >= 30) {
      resultText = 'Obese';
    } else if (result >= 25 && result <= 30) {
      resultText = 'OverWeight';
    } else if (result >= 18.5 && result <= 24.9) {
      resultText = 'Normal';
    } else {
      resultText = 'Thin';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Gender:${isMale ? 'Male' : 'Female'}',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text('Result:${result.toStringAsFixed(2)}',
                  style: Theme.of(context).textTheme.headline1),
              Text(
                'Healthiness:$resultphrase',
                style: Theme.of(context).textTheme.headline1,
                textAlign: TextAlign.center,
              ),
              Text('Age:$age', style: Theme.of(context).textTheme.headline1),
            ],
          ),
        ),
      ),
    );
  }
}
