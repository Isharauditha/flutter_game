import 'package:flutter/material.dart';
import '../widgets/my_button.dart';
import 'home_page.dart';

class GameOverPage extends StatelessWidget {
  final int secretNumber;

  const GameOverPage({
    super.key,
    required this.secretNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        automaticallyImplyLeading: false, // disable the backbutton
        title: const Center(
          child: Text(
            'Game Over',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Sorry!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          const Icon(
            Icons.warning_amber_outlined,
            size: 100,
          ),

          const SizedBox(
            height: 20,
          ),

          const Center(
            child: Text(
              "My secret number is",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          // Display the secret number
          Text(
            secretNumber.toString(),
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          // Start new game button
          MyButton(
            text: "Start the Game Again",
            color: Colors.red,
            foregroundColor: Colors.black,
            onpressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
