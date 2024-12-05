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
      theme: ThemeData(primarySwatch: Colors.red),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon _coeur = Icon(
  Icons.favorite_border,
  color: Colors.white,
  );
  bool _likeBool = false;
  int _selectedIndex = 0;
  String _affichage = 'Accueil';

  void _likeThis() {
    setState(() {
      if (_likeBool) {
        _coeur =  const Icon(
          Icons.favorite_border,
          color: Colors.white,
        );
        _likeBool = false; 
      } else {
        _coeur = const Icon(
          Icons.favorite,
          color: Colors.white,
        );
        _likeBool = true; 
      }
    });
  }

  void _itemClique(int index) {
    setState(() {
      _selectedIndex = index;
      switch (_selectedIndex) {
        case 0:
          _affichage = '$_selectedIndex : Accueil';
          break;
        case 1:
          _affichage = '$_selectedIndex : Mon compte';
          break;
        case 2:
          _affichage = '$_selectedIndex : Statistiques';
          break;
        default:
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(onPressed: _likeThis, icon: _coeur),
        ],
        backgroundColor: const Color.fromARGB(255, 214, 0, 0),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text(
                'Menu de navigation',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Acceuil'),
              onTap: () {
                Navigator.pop(context); // Ferme le Drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Mon compte'),
              onTap: () {
                Navigator.pop(context); // Ferme le Drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Paramètres'),
              onTap: () {
                Navigator.pop(context); // Ferme le Drawer
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _likeThis,
        tooltip: 'Song',
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.audiotrack,
          color: Colors.black,
          size: 30.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
         Image.network("https://cdn1.epicgames.com/offer/cbd5b3d310a54b12bf3fe8c41994174f/EGS_VALORANT_RiotGames_S2_1200x1600-7bf61b8b77e394c4bc709f6b02c0db24",
          width: 460, 
          height: 250,
         ),
          Image.asset("../assets/images/valorant.jpg",
          width: 500,
          height: 700,
          ),
          Text(_affichage),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Mon compte',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Statistiques',
          ),
        ],
        onTap: _itemClique,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple[800],
      ),
    );
  }
}
