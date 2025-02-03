import 'package:flutter/material.dart';
import 'package:love/oxuel.dart';
import 'package:love/yes.dart';

class Not extends StatelessWidget {
  const Not({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/sure.jpeg',
                fit: BoxFit.cover,
              ),
            ),
             Positioned(
              top: 360,
              left: 70,
              child: Text(
                'Подумай еще раз',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 11, 131, 0),
                ),
              ),
            ),
             Positioned(
              left: 45,
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
                      backgroundColor: Colors.white,
                    ),
                    child: Text(
                      'ДА. Я буду твоей валентинкой!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Oxuel(),
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
                        fontSize: 8,
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