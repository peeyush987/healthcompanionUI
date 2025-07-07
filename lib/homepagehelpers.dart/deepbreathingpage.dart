import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DeepBreathingPage extends StatefulWidget {
  const DeepBreathingPage({super.key});

  @override
  State<DeepBreathingPage> createState() => _DeepBreathingPageState();
}

class _DeepBreathingPageState extends State<DeepBreathingPage> {
  late YoutubePlayerController _controller1;
  late YoutubePlayerController _controller2;
  late YoutubePlayerController _controller3;

  @override
  void initState() {
    super.initState();

    _controller1 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
        'https://youtu.be/Rt08wzTYKHg?si=I2lN1Sgl7ldZXu9-',
      )!,
      flags: const YoutubePlayerFlags(autoPlay: false, mute: false),
    );

    _controller2 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
        'https://youtu.be/LiUnFJ8P4gM?si=dKJpn4Kr3FnCkaD3',
      )!,
      flags: const YoutubePlayerFlags(autoPlay: false, mute: false),
    );

    _controller3 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
        'https://youtu.be/qhcBjSirMss?si=jCRGTuKO8HL-U_5M',
      )!,
      flags: const YoutubePlayerFlags(autoPlay: false, mute: false),
    );
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    super.dispose();
  }

  Widget buildExerciseSection({
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
      appBar: AppBar(title: const Text("Deep Breathing Exercises")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildExerciseSection(
              title: "1. Box Breathing (4-4-4-4)",
              description:
                  "Also known as Square Breathing, this technique is widely used to calm the nervous system.\n\n"
                  "How to do it:\n• Inhale for 4 seconds\n• Hold for 4 seconds\n• Exhale for 4 seconds\n• Hold again for 4 seconds\n\n"
                  "🔁 Repeat for 4–6 cycles\n✅ Best for: Anxiety, focus, stress relief",
              controller: _controller1,
            ),
            buildExerciseSection(
              title: "2. 4-7-8 Breathing",
              description:
                  "This powerful breathing technique promotes relaxation and helps with sleep.\n\n"
                  "How to do it:\n• Inhale through the nose for 4 seconds\n• Hold for 7 seconds\n• Exhale through the mouth for 8 seconds\n\n"
                  "✅ Best for: Insomnia, calming the mind",
              controller: _controller2,
            ),
            buildExerciseSection(
              title: "3. Diaphragmatic (Belly) Breathing",
              description:
                  "Trains your body to use your diaphragm effectively for deeper, slower breaths.\n\n"
                  "How to do it:\n• Sit or lie down comfortably\n• Place one hand on your belly, the other on your chest\n• Breathe in deeply through your nose – your belly should rise\n• Exhale through pursed lips – your belly falls\n\n"
                  "✅ Best for: General stress reduction, breath awareness",
              controller: _controller3,
            ),
          ],
        ),
      ),
    );
  }
}
