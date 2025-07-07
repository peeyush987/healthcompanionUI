import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MindfulnessPage extends StatefulWidget {
  const MindfulnessPage({super.key});

  @override
  State<MindfulnessPage> createState() => _MindfulnessPageState();
}

class _MindfulnessPageState extends State<MindfulnessPage> {
  late YoutubePlayerController _controller1;
  late YoutubePlayerController _controller2;
  late YoutubePlayerController _controller3;
  late YoutubePlayerController _controller4;

  @override
  void initState() {
    super.initState();

    _controller1 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
        'https://www.youtube.com/watch?v=inpok4MKVLM',
      )!,
      flags: const YoutubePlayerFlags(autoPlay: false),
    );

    _controller2 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
        'https://www.youtube.com/watch?v=QS2yDmWk0vs',
      )!,
      flags: const YoutubePlayerFlags(autoPlay: false),
    );

    _controller3 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
        'https://www.youtube.com/watch?v=eGVv4YzuwVM',
      )!,
      flags: const YoutubePlayerFlags(autoPlay: false),
    );

    _controller4 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
        'https://www.youtube.com/watch?v=s1g5M3vMwV0',
      )!,
      flags: const YoutubePlayerFlags(autoPlay: false),
    );
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    super.dispose();
  }

  Widget buildSession({
    required String title,
    required String description,
    required YoutubePlayerController controller,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        YoutubePlayer(
          controller: controller,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.deepPurple,
        ),
        const SizedBox(height: 16),
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(description, style: const TextStyle(fontSize: 16)),
        const SizedBox(height: 30),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mindfulness Sessions")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSession(
              title: "1. 5-Minute Mindfulness",
              description:
                  "A quick and effective way to recenter your mind during a busy day.\n\n"
                  "✅ Best for: Daily reset, stress relief, beginners",
              controller: _controller1,
            ),
            buildSession(
              title: "2. Body Scan Meditation",
              description:
                  "Focuses attention on different parts of your body to relieve tension and promote awareness.\n\n"
                  "✅ Best for: Relaxation, improving mind-body connection",
              controller: _controller2,
            ),
            buildSession(
              title: "3. Mindful Observation",
              description:
                  "Use your senses to deeply focus on an object or experience, like watching a candle or sipping tea.\n\n"
                  "✅ Best for: Enhancing awareness, grounding yourself",
              controller: _controller3,
            ),
            buildSession(
              title: "4. Loving-Kindness Meditation",
              description:
                  "Cultivate compassion and warmth for yourself and others through focused thought and intention.\n\n"
                  "✅ Best for: Emotional healing, inner peace",
              controller: _controller4,
            ),
          ],
        ),
      ),
    );
  }
}
