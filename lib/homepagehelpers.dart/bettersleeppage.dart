import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Bettersleeppage extends StatefulWidget {
  const Bettersleeppage({super.key});

  @override
  State<Bettersleeppage> createState() => _BettersleeppageState();
}

class _BettersleeppageState extends State<Bettersleeppage> {
  late YoutubePlayerController _controller1;
  late YoutubePlayerController _controller2;
  late YoutubePlayerController _controller3;
  late YoutubePlayerController _controller4;
  late YoutubePlayerController _controller5;

  @override
  void initState() {
    super.initState();

    _controller1 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
        'https://www.youtube.com/watch?v=glgOHt79hV4',
      )!,
      flags: const YoutubePlayerFlags(autoPlay: false),
    );

    _controller2 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
        'https://www.youtube.com/watch?v=1vx8iUvfyCY',
      )!,
      flags: const YoutubePlayerFlags(autoPlay: false),
    );

    _controller3 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
        'https://www.youtube.com/watch?v=clcD4Jo7SP8',
      )!,
      flags: const YoutubePlayerFlags(autoPlay: false),
    );

    _controller4 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
        'https://www.youtube.com/watch?v=1KaOrSuWZeM',
      )!,
      flags: const YoutubePlayerFlags(autoPlay: false),
    );

    _controller5 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
        'https://www.youtube.com/watch?v=9zPo46TxYfA',
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
    _controller5.dispose();
    super.dispose();
  }

  Widget buildExercise({
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
      appBar: AppBar(title: const Text("Better Sleep Exercises")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildExercise(
              title: "1. Sleep Hygiene Tips",
              description:
                  "Basic habits that improve your sleep quality:\n• Stick to a sleep schedule\n• Avoid screens 1 hour before bed\n• Create a calming environment\n• Avoid caffeine & alcohol late in the day\n\n✅ Best for: Long-term sleep improvement",
              controller: _controller1,
            ),
            buildExercise(
              title: "2. Guided Sleep Meditation",
              description:
                  "Relax your body and mind with a soothing voice.\nPerfect for those with racing thoughts at bedtime.\n\n✅ Best for: Anxiety before sleep, insomnia",
              controller: _controller2,
            ),
            buildExercise(
              title: "3. Progressive Muscle Relaxation",
              description:
                  "Systematically tense and relax muscle groups to release physical tension.\n\n✅ Best for: Stress-related sleep issues, muscle tightness",
              controller: _controller3,
            ),
            buildExercise(
              title: "4. Nature Sounds / White Noise",
              description:
                  "Use calming audio like rain, ocean, or forest to block distractions and lull you to sleep.\n\n✅ Best for: Light sleepers, background noise masking",
              controller: _controller4,
            ),
            buildExercise(
              title: "5. Gentle Bedtime Yoga",
              description:
                  "Slow, stretching yoga to wind down your body before bed.\nImproves circulation, posture, and nervous system balance.\n\n✅ Best for: Restless body, pre-sleep routine",
              controller: _controller5,
            ),
          ],
        ),
      ),
    );
  }
}
