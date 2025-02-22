import 'package:flutter/material.dart';
import 'package:love/not.dart';
import 'package:love/yes.dart';

class No extends StatelessWidget {
  const No({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/no.jpeg',
                fit: BoxFit.cover,
              ),
            ),
             Positioned(
              top: 120,
              left: 80,
              child: Text(
                'Ты уверен?',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 255, 0, 0),
                ),
              ),
            ),
             Positioned(
              left: 20,
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
                      backgroundColor: const Color.fromARGB(255, 248, 248, 77),
                    ),
                    child: Text(
                      'Я согласен быть твоей валентинкой!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: const Color.fromARGB(255, 154, 2, 142),
                      ),
                    ),
                  );
                }
              ),
            ),
             Positioned(
              left: 135,
              top: 570,
              child: Builder(
                builder: (context) {
                  return ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Not(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                    child: Text(
                      'не буду',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                  );
                }
              ),
            ),
          ],
        ),
    );
  }
}
