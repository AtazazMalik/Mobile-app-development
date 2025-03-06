import 'package:flutter/material.dart';

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
  
        backgroundColor: Colors.white,
        
        appBar: AppBar(
          title: const Text(
            'My Introduction',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blueAccent,
        ),
      
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: 'Hello! My name is ',
                      ),
                      TextSpan(
                        text: 'Atazaz Malik',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ' and I am a computer science student. I am passionate about mobile app development. I am ',
                      ),
                      TextSpan(
                        text: 'strong, creative, and dedicated',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      TextSpan(
                        text: ' to learning new technologies. I enjoy building useful applications that solve real-world problems.',
                      ),
                    ],
                  ),
                ),
              ),
              // Task 3: Add a star icon
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}