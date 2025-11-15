import 'package:flutter/material.dart';

void main() {
  runApp(ContactApp());
}

class ContactApp extends StatefulWidget {
  @override
  _ContactAppState createState() => _ContactAppState();
}

class _ContactAppState extends State<ContactApp> {
  ThemeMode _themeMode = ThemeMode.system;

  void _toggleTheme(ThemeMode mode) {
    setState(() {
      _themeMode = mode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: _themeMode,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[50],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          elevation: 2,
        ),
        cardTheme: CardThemeData(
          color: Colors.white,
          elevation: 2,
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[900],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[850],
          foregroundColor: Colors.white,
          elevation: 2,
        ),
        cardTheme: CardThemeData(
          color: Colors.grey[850],
          elevation: 2,
        ),
      ),
      home: ContactListPage(onThemeChanged: _toggleTheme, currentTheme: _themeMode),
    );
  }
}

class ContactListPage extends StatelessWidget {
  final Function(ThemeMode) onThemeChanged;
  final ThemeMode currentTheme;
  
  const ContactListPage({Key? key, required this.onThemeChanged, required this.currentTheme}) : super(key: key);

  Color getStatusColor(String status) {
    switch (status) {
      case "Online":
        return Colors.green;
      case "Away":
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> contacts = [
      {"name": "Rama", "phone": "08123456789", "status": "Online"},
      {"name": "Ayu", "phone": "08139584772", "status": "Offline"},
      {"name": "Doni", "phone": "08781234112", "status": "Away"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Kontak"),
        actions: [
          PopupMenuButton<ThemeMode>(
            icon: Icon(Icons.brightness_6),
            onSelected: onThemeChanged,
            itemBuilder: (context) => [
              PopupMenuItem(
                value: ThemeMode.light,
                child: Row(
                  children: [
                    Icon(Icons.light_mode, color: Colors.amber),
                    SizedBox(width: 8),
                    Text("Terang"),
                  ],
                ),
              ),
              PopupMenuItem(
                value: ThemeMode.dark,
                child: Row(
                  children: [
                    Icon(Icons.dark_mode, color: Colors.indigo),
                    SizedBox(width: 8),
                    Text("Gelap"),
                  ],
                ),
              ),
              PopupMenuItem(
                value: ThemeMode.system,
                child: Row(
                  children: [
                    Icon(Icons.settings_suggest, color: Colors.grey),
                    SizedBox(width: 8),
                    Text("Sistem"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(Icons.person, color: Colors.white),
              ),
              title: Text(contacts[index]["name"]),
              subtitle: Row(
                children: [
                  Text(contacts[index]["phone"]),
                  SizedBox(width: 8),
                  Icon(Icons.circle,
                      size: 10, color: getStatusColor(contacts[index]["status"])),
                  SizedBox(width: 4),
                  Text(
                    contacts[index]["status"],
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              trailing: IconButton(
                icon: Icon(Icons.call),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Memanggil ${contacts[index]['name']}..."),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}