import 'package:flutter/material.dart';
import 'yes.dart'; 
import 'no.dart';  

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
                'assets/hello.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 370,
              left: 10,
              child: Text(
                'Будешь ли ты моей валентинкой?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  backgroundColor: Colors.pink.shade200,
                ),
              ),
            ),
            Positioned(
              left: 100,
              top: 430,
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
                      'КОНЕЧНО!!!',
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
                      backgroundColor: Colors.transparent,
                    ),
                    child: Text(
                      'нет',
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
