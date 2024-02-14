import 'package:flutter/material.dart';
import 'package:flutter_game/widgets/my_button.dart';

class TryAgainPage extends StatelessWidget {
  const TryAgainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.yellow[400],
        automaticallyImplyLeading: false, // disable the backbutton
        title: const Center(
          child: Text(
            'Try Again',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Oops!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          const Icon(
            Icons.error_outline_rounded,
            size: 100,
          ),

          const SizedBox(
            height: 20,
          ),

          const Center(
            child: Text(
              "Wrong guess, Please try again...",
              style: TextStyle(fontSize: 18),
            ),
          ),

          const SizedBox(
            height: 40,
          ),

          // Try Again button
          MyButton(
            text: "Try Again",
            color: Colors.yellow,
            foregroundColor: Colors.black,
            onpressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}
