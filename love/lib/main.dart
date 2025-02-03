import 'package:flutter/material.dart';
import 'yes.dart'; // Assuming Yes screen is in yes.dart
import 'no.dart';  // Assuming No screen is in no.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/wallpaper.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 250,
              left: 15,
              child: Text(
                'Will you be mine Valentine?',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  backgroundColor: Colors.pink.shade100,
                ),
              ),
            ),
            Positioned(
              left: 125,
              top: 340,
              child: Builder(
                builder: (context) {
                  return ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => Yes()),);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple.shade100,
                    ),
                    child: Text(
                      'YES!!!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  );
                }
              ),
            ),
            Positioned(
              left: 160,
              top: 570,
              child: Builder(
                builder: (context) {
                  return ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => No(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 253, 120, 111),
                    ),
                    child: Text(
                      'no',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
