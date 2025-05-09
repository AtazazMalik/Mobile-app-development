import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: SplashScreen(), debugShowCheckedModeBanner: false));
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onDoubleTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => InfoTabsScreen()),
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.flutter_dash, size: 100, color: Colors.blue),
              SizedBox(height: 10),
              Text('Double Tap to Start', style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoTabsScreen extends StatelessWidget {
  final tabData = [
    {
      'icon': Icons.person,
      'label': 'Myself',
      'text': 'I am a student of Computer Science.',
    },
    {
      'icon': Icons.location_city,
      'label': 'Hometown',
      'text': 'My hometown is Islamabad.',
    },
    {
      'icon': Icons.school,
      'label': 'Student Life',
      'text': 'I study at Bahria University.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabData.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('ATAZAZ MALIK'),
          bottom: TabBar(
            tabs:
                tabData.map((tab) {
                  return Tab(
                    icon: Icon(tab['icon'] as IconData),
                    text: tab['label'] as String,
                  );
                }).toList(),
          ),
        ),
        body: TabBarView(
          children:
              tabData.map((tab) {
                return GestureDetector(
                  onLongPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ThirdScreen()),
                    );
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        tab['text'] as String,
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('More Info')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'This is additional detailed information.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
