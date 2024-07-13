import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        title: const Text('Basketball Counter'),
        backgroundColor: Color(0xffDFC5F7),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/basketbal.jpg',
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PointsCounter(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(8),
                backgroundColor: const Color(0xffDFC5F7),
                minimumSize: const Size(150, 60),
              ),
              child: const Text(
                'Start',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamA = 0;
  int teamB = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Points Counter',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text(
                    'Team A',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    '$teamA',
                    style: const TextStyle(
                      fontSize: 160,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamA += 1;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(16),
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(180, 60),
                    ),
                    child: const Text(
                      'Add 1 Point',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamA += 2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(16),
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(180, 60),
                    ),
                    child: const Text(
                      'Add 2 Points',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamA += 3;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(16),
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(180, 60),
                    ),
                    child: const Text(
                      'Add 3 Points',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 490,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
              Column(
                children: [
                  const Text(
                    'Team B',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    '$teamB',
                    style: const TextStyle(
                      fontSize: 160,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamB++;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(16),
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(180, 60),
                    ),
                    child: const Text(
                      'Add 1 Point',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamB += 2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(16),
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(180, 60),
                    ),
                    child: const Text(
                      'Add 2 Points',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamB += 3;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(16),
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(180, 60),
                    ),
                    child: const Text(
                      'Add 3 Points',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                teamA = 0;
                teamB = 0;
              });
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(16),
              backgroundColor: Colors.orange,
              minimumSize: const Size(180, 60),
            ),
            child: const Text(
              'Reset',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
