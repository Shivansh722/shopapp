import 'package:flutter/material.dart';
import 'package:shop/widgets/grocery_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  void toggleDarkMode() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Groceries',
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.purple, // Set the base color to purple
        scaffoldBackgroundColor: Colors.white,
      ),
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: const ColorScheme(
          primary: Color.fromARGB(255, 144, 123, 169),
          primaryVariant: Color.fromARGB(255, 116, 86, 135),
          secondary: Color(0xFF42B883),
          secondaryVariant: Color(0xFF007ACC),
          surface: Color(0xFF2A333B),
          background: Color(0xFF323A3C),
          error: Color(0xFFB00020),
          onPrimary: Colors.black,
          onSecondary: Colors.black,
          onSurface: Colors.white,
          onBackground: Colors.white,
          onError: Colors.white,
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 50, 58, 60),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Groceries'),
        ),
        body: GroceryList(),
        floatingActionButton: FloatingActionButton(
          onPressed: toggleDarkMode,
          child: Icon(
            isDarkMode ? Icons.light_mode : Icons.dark_mode,
          ),
        ),
      ),
    );
  }
}
