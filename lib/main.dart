import 'package:flutter/material.dart';
import 'Bitcoin/BitcoinTrackerScreen.dart';
import 'BMICalculator/BMICalculatorScreen.dart';
import 'Clime/Climescree.dart';
import 'Destini/DestiniScreen.dart';
import 'dicee_app/dicee.dart';
import 'FlashChat/FlashChatScreen.dart';
import 'magic_ball/magic_ball_8.dart';
import 'myCard/my_card.dart';
import 'poor/i_am_poor.dart';
import 'QuireLer/QuireLerScreen.dart';
import 'rich/i_am_rich.dart';
import 'Xylophone/XylophoneScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Training Projects Hub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/project1': (context) => IamRich(),
        '/project2': (context) => IAmPoorScreen(),
        '/project3': (context) => MiCardScreen(),
        '/project4': (context) => DiceeScreen(),
        '/project5': (context) => MagicBallScreen(),
        '/project6': (context) => XylophoneScreen(),
        '/project7': (context) => QuireLerScreen(),
        '/project8': (context) => DestiniScreen(),
        '/project9': (context) => BMICalculatorScreen(),
        '/project10': (context) => ClimeScreen(),
        '/project11': (context) => BitcoinTrackerScreen(),
        '/project12': (context) => FlashChatScreen(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> buttonTitles = [
    "I am Rich",
    "I am Poor",
    "Mi Card",
    "Dicee",
    "Magic Ball",
    "Xylophone",
    "QuireLer",
    "Destini",
    "BMI Calculator",
    "Clime",
    "Bitcoin Tracker",
    "Flash Chat",
  ];

  final List<Color> buttonColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.yellow,
    Colors.teal,
    Colors.cyan,
    Colors.indigo,
    Colors.lime,
    Colors.teal,
    Colors.blue,
  ];

  final List<String> buttonIcons = [
    "assets/icons/diamond.png",
    "assets/icons/poor.png",
    "assets/icons/card.png",
    "assets/icons/dice.png",
    "assets/icons/ball.png",
    "assets/icons/xylophone.png",
    "assets/icons/quiz.png",
    "assets/icons/desitini.png",
    "assets/icons/bmi.png",
    "assets/icons/climate.png",
    "assets/icons/bitcoin.png",
    "assets/icons/chat.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan.shade900,
        title: Text(
          'Training Projects Hub',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: buttonTitles.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.2,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: buttonColors[index].withOpacity(0.8),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(16),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/project${index + 1}');
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      buttonIcons[index],
                      width: 50,
                      height: 50,
                    ),
                    SizedBox(height: 10),
                    Text(
                      buttonTitles[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
