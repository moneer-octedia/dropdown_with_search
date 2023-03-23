import 'package:flutter/material.dart' hide DropdownButton, DropdownMenuItem;
import 'package:dropdown_with_search/dropdown_with_search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(),
          )
        ),
        home: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Center(
              child: DropdownButton<int>(
                value: 0,
                items: [
                  DropdownMenuItem(
                    child: Text('item one'),
                    value: 0,
                  ),
                  DropdownMenuItem(
                    child: Text('item two'),
                    value: 1,
                  ),
                ],
                onChanged: (Object? value) {},
              ),
            ),
          ),
        ));
  }
}
