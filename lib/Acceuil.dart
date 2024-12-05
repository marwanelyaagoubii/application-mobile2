import 'package:flutter/material.dart';
import 'main.dart';

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
      theme: ThemeData(primarySwatch: Colors.red),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Jeux Riot Games",
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.only(bottom:55),
              child: Text(
                'Clique sur un des boutons pour plus dinformations ! ',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildImageWithButton(
                context,
                "https://cdn1.epicgames.com/offer/cbd5b3d310a54b12bf3fe8c41994174f/EGS_VALORANT_RiotGames_S2_1200x1600-7bf61b8b77e394c4bc709f6b02c0db24",
                "VALORANT",
              ),
              _buildImageWithButton(
                context,
                "https://m.media-amazon.com/images/M/MV5BMmEzYzQ2ZGQtNmU2NC00ZDFkLTg4NWItNDQwZGM0OTlkMWYyXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
                "LEAGUE OF LEGENDS",
              ),
              _buildImageWithButton(
                context,
                "https://cdn1.epicgames.com/offer/4fb89e9f47fe48258314c366649c398e/EGS_LegendsofRuneterra_RiotGames_S2_1200x1600-81d66ade5e34a391494be02ba95f797e",
                "RUNTERRA",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildImageWithButton(BuildContext context, String imageUrl, String title) {
    return Column(
      children: [
        Image.network(
          imageUrl,
          width: 630,
          height: 630,
        ),
        SizedBox(height: 8),
        ElevatedButton(
          onPressed: () {
             Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => MySecondPage(title : (widget.title))),
              );
            },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: Colors.red, width: 2),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
          child: Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
