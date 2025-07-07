import 'package:flutter/material.dart';

class MoodResultPage extends StatelessWidget {
  final String selectedMood;

  const MoodResultPage({Key? key, required this.selectedMood})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF92A3FD),
      appBar: AppBar(
        backgroundColor: const Color(0xFF92A3FD),
        elevation: 0,
        title: const Text("Mood Summary"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                'Your mood today:',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              const SizedBox(height: 10),
              // Mood Emoji Display
              Text(selectedMood, style: const TextStyle(fontSize: 60)),

              const SizedBox(height: 30),

              // First Tile: AI-driven Suggestions
              GestureDetector(
                onTap: () {
                  // TODO: Navigate to AI Suggestions Page
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.shade300,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.auto_awesome, size: 40, color: Colors.white),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          "AI-driven Activity Suggestions",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Second Tile: Personal Self-Care
              GestureDetector(
                onTap: () {
                  // TODO: Navigate to Personal Self-Care Page
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.self_improvement,
                        size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          "Personal Self-Care Routine",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
