import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const MySecondPage(title: 'Valorant'),
    );
  }
}

class MySecondPage extends StatefulWidget {
  const MySecondPage({super.key, required this.title});

  final String title;

  @override
  State<MySecondPage> createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Valorant - Jeux Vidéo',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Valorant est un jeu compétitif en 5v5 où deux équipes saffrontent dans une série de manches. Une équipe joue lattaque, tentant de poser une bombe (appelée Spike), tandis que lautre défend les sites stratégiques pour empêcher cette action. Le jeu combine des mécaniques classiques des FPS (First-Person Shooter) avec des éléments tactiques inspirés de jeux comme Counter-Strike: Global Offensive.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star_half, color: Colors.amber),
                        ],
                      ),
                      const SizedBox(width: 8),
                      const Text('4.8/5 - 300k Notes sur RiotGame'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: const [
                          Icon(Icons.gamepad, color: Colors.red),
                          SizedBox(height: 4),
                          Text('Genre'),
                          Text('FPS'),
                        ],
                      ),
                      const SizedBox(width: 16),
                      Column(
                        children: const [
                          Icon(Icons.people, color: Colors.red),
                          SizedBox(height: 4),
                          Text('Joueurs'),
                          Text('5v5'),
                        ],
                      ),
                      const SizedBox(width: 16),
                      Column(
                        children: const [
                          Icon(Icons.update, color: Colors.red),
                          SizedBox(height: 4),
                          Text('Sortie'),
                          Text('2020'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 1000,
            height: 1000,
            padding: const EdgeInsets.all(16),
            child: Image.asset(
              'assets/images/valoo.jpg',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 10, bottom: 10),
        child: Container(
          width: 200,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pop(context);
            },
            tooltip: 'click',
            child: const Text(
              'Precedent',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
