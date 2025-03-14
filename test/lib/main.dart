import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LogoScreen());
  }
}

class LogoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Image.asset(
          'assets/logo.png', // Replace with your logo path
          width: 150, // Adjust as needed
          height: 150,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondScreen()),
          );
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                'assets/Flogo.png', // Replace with your logo path
                width: 150, // Adjust as needed
                height: 150,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Facebook',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text('Contains', style: TextStyle(fontSize: 16)),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/insta.png', width: 40, height: 40),
                    SizedBox(width: 10),
                    Image.asset('assets/Wt.png', width: 40, height: 40),
                    SizedBox(width: 10),
                    Image.asset('assets/mess.png', width: 40, height: 40),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ThirdScreen()),
          );
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  int teamAScore = 0;
  int teamBScore = 0;

  void updateScore(String team, int points) {
    setState(() {
      if (team == 'A') {
        teamAScore += points;
      } else {
        teamBScore += points;
      }
    });
  }

  void resetScores() {
    setState(() {
      teamAScore = 0;
      teamBScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Court Counter')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Court Counter',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTeamColumn('Team A', teamAScore, 'A'),
              SizedBox(width: 50),
              _buildTeamColumn('Team B', teamBScore, 'B'),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: resetScores, child: Text('Reset Scores')),
        ],
      ),
    );
  }

  Widget _buildTeamColumn(String teamName, int score, String team) {
    return Column(
      children: [
        Text(
          teamName,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          '$score',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => updateScore(team, 3),
          child: Text('+3 Points'),
        ),
        ElevatedButton(
          onPressed: () => updateScore(team, 2),
          child: Text('+2 Points'),
        ),
        ElevatedButton(
          onPressed: () => updateScore(team, 1),
          child: Text('Free Throw'),
        ),
      ],
    );
  }
}
