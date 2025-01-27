import 'package:catppuccin_flutter/catppuccin_flutter.dart';
import 'package:flutter/material.dart';

Flavor flavor = catppuccin.mocha;

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    darkTheme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: flavor.base,
        ),
        scaffoldBackgroundColor: flavor.crust,
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            color: flavor.text,
          ),
          bodyMedium: TextStyle(
            color: flavor.text,
          ),
          bodySmall: TextStyle(
            color: flavor.text,
          ),
        )),
    themeMode: ThemeMode.dark,
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'First Route',
          style: TextStyle(
            color: flavor.text,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Simple implementation of Navigator widget'),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(flavor.surface0),
                  foregroundColor: WidgetStatePropertyAll(flavor.text)),
              child: const Text('Open route'),
              onPressed: () {
                debugPrint('Switching to SecondRoute');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
            ),
            Text(
              '22ug1-0093',
              style: TextStyle(
                fontSize: 9.0,
                fontStyle: FontStyle.italic,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Second Route',
          style: TextStyle(
            color: flavor.text,
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(flavor.surface0),
              foregroundColor: WidgetStatePropertyAll(flavor.text)),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
