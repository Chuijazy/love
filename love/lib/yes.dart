import 'package:flutter/material.dart';

class Yes extends StatelessWidget {
  const Yes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: 350, 
              child: Image.asset(
                'assets/nice.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 350, 
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: 350, 
              child: Image.asset(
                'assets/love.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 320,
            left: 130,
            child: Container(
              padding: EdgeInsets.all(8),
              color: Colors.pink.shade200,
              child: Text(
                'NICE!',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          Positioned(
            top: 290,
            left: 50,
            child: Icon(
              Icons.favorite,
              color: Color.fromARGB(255, 248, 19, 3),
              size: 50,
            ),
          ),
          Positioned(
            top: 250,
            left: 150,
            child: Icon(
              Icons.favorite,
              color: Color.fromARGB(255, 244, 30, 183),
              size: 50,
            ),
          ),
          Positioned(
            top: 280,
            left: 240,
            child: Icon(
              Icons.favorite,
              color: Color.fromARGB(255, 248, 113, 3),
              size: 50,
            ),
          ),
          Positioned(
            top: 360,
            left: 55,
            child: Icon(
              Icons.favorite,
              color: Color.fromARGB(255, 207, 52, 250),
              size: 50,
            ),
          ),
          Positioned(
            top: 390,
            left: 150,
            child: Icon(
              Icons.favorite,
              color: Color.fromARGB(255, 240, 79, 68),
              size: 50,
            ),
          ),
          Positioned(
            top: 370,
            right: 90,
            child: Icon(
              Icons.favorite,
              color: Color.fromARGB(255, 239, 52, 114),
              size: 50,
            ),
          ),
        ],
      ),
    );
  }
}

