import 'package:flutter/material.dart';
import 'package:healthcompanion/moods/mood_result_page.dart';

class Moods extends StatelessWidget {
  final String mood;

  const Moods({Key? key, required this.mood}) : super(key: key);

  void _onMoodSelected(BuildContext context) {
    // Optional: show feedback before navigating
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Mood "$mood" checked in!'),
        duration: Duration(milliseconds: 800),
        behavior: SnackBarBehavior.floating,
      ),
    );

    // Navigate after a short delay
    Future.delayed(Duration(milliseconds: 850), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MoodResultPage(selectedMood: mood),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _onMoodSelected(context),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 127, 142, 215),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(16),
        child: Center(child: Text(mood, style: const TextStyle(fontSize: 28))),
      ),
    );
  }
}
