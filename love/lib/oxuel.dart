import 'package:flutter/material.dart';
import 'package:love/yes.dart';

class Oxuel extends StatelessWidget {
  const Oxuel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/oxuel.jpeg',
                fit: BoxFit.cover,
              ),
            ),
             Positioned(
              top: 160,
              left: 60,
              child: Text(
                'ПОДУМАЙ ЕЩЕ -_-',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 255, 0, 0),
                ),
              ),
            ),
             Positioned(
              left: 55,
              top: 450,
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
                      backgroundColor: const Color.fromARGB(255, 39, 214, 249),
                    ),
                    child: Text(
                      'ДА. Я хочу быть \nтвоей валентинкой!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.pink,
                      ),
                    ),
                  );
                }
              ),
            ),
            Positioned(
              left: 150,
              top: 570,
              child: Builder(
                builder: (context) {
                  return ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                    child: Text(
                      'нет',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 8,
                        color: Colors.white,
                      ),
                    ),
                  );
                }
              ),
            ),
          ]
      ),
      );
  }
}