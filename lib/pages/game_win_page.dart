import 'package:flutter/material.dart';
import '../widgets/my_button.dart';
import 'home_page.dart';

class GameWinPage extends StatelessWidget {
  final int secretNumber;

  const GameWinPage({
    super.key,
    required this.secretNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        automaticallyImplyLeading: false, // disable the backbutton
        title: const Center(
          child: Text(
            'You Win',
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
            "Congratulations!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          const Icon(
            Icons.celebration_outlined,
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

          // display the secret number
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
            color: Colors.green,
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
