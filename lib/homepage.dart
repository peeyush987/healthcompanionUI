import 'package:flutter/material.dart';
import 'package:healthcompanion/homepagehelpers.dart/bettersleeppage.dart';
import 'package:healthcompanion/homepagehelpers.dart/deepbreathingpage.dart';
import 'package:healthcompanion/homepagehelpers.dart/habitstile.dart';
import 'package:healthcompanion/homepagehelpers.dart/mindfullnesspage.dart';
import 'package:healthcompanion/moods/moods.dart';
import 'package:healthcompanion/profilepage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF92A3FD),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF92A3FD),
        currentIndex: 0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Color.fromARGB(255, 199, 194, 255),
        onTap: (index) {
          if (index == 0) {
            // Stay on Home
          } else if (index == 1) {
            Navigator.of(context).maybePop();
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.exit_to_app), label: 'Exit'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //greetings and icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Peeyush',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '7 July, 2025',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 106, 75, 190),
                            ),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 127, 142, 215),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: EdgeInsets.all(12),
                            child: Icon(Icons.whatshot, color: Colors.white),
                          ),

                          SizedBox(width: 5),

                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 127, 142, 215),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: EdgeInsets.all(12),
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 25),
                  //search bar
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 127, 142, 215),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.white),
                        SizedBox(width: 5),
                        Text('Search', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),

                  SizedBox(height: 25),

                  // how is your mood today
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How is your mood today?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Icon(Icons.more_horiz, color: Colors.white),
                    ],
                  ),

                  SizedBox(height: 25),

                  // moods differente
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //bad
                      Column(
                        children: [
                          Moods(mood: '😔'),
                          SizedBox(height: 8),
                          Text('Bad', style: TextStyle(color: Colors.white)),
                        ],
                      ),

                      //okay
                      Column(
                        children: [
                          Moods(mood: '🙂'),
                          SizedBox(height: 8),
                          Text('Okay', style: TextStyle(color: Colors.white)),
                        ],
                      ),

                      //well
                      Column(
                        children: [
                          Moods(mood: '😀'),
                          SizedBox(height: 8),
                          Text('Good', style: TextStyle(color: Colors.white)),
                        ],
                      ),

                      //excellent
                      Column(
                        children: [
                          Moods(mood: '😆'),
                          SizedBox(height: 8),
                          Text(
                            'Excellent',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    // Stress Management Title
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Stress Management Habits',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // ListView of habits
                    Expanded(
                      child: ListView(
                        children: [
                          Habitstile(
                            icon: Icons.favorite,
                            habitName: 'Deep Breathing Exercises',
                            exercises: '3 Exercises',
                            iconBgColor: Colors.deepOrangeAccent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const DeepBreathingPage(),
                                ),
                              );
                            },
                          ),
                          Habitstile(
                            icon: Icons.nights_stay,
                            habitName: 'Better Sleep',
                            exercises: '5 Exercises',
                            iconBgColor: Colors.indigo,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Bettersleeppage(),
                                ),
                              );
                            },
                          ),
                          Habitstile(
                            icon: Icons.self_improvement,
                            habitName: 'Mindfulness',
                            exercises: '4 Sessions',
                            iconBgColor: Colors.green,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MindfulnessPage(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
