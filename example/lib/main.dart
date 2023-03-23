import 'package:flutter/material.dart' hide DropdownButton, DropdownMenuItem;

import 'package:dropdown_with_search_field/dropdown_with_search_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final searchFieldController = TextEditingController();

  int? value;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(),
            )),
        home: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Dropdown with search'),
                const SizedBox(height: 8),
                DropdownButtonWithSearchField<int>(
                  isDense: true,
                  value: value,
                  onChanged: (newValue) {
                    setState(() {
                      value = newValue!;
                    });
                  },
                  items: [
                    DropdownMenuItemWithSearchField(
                      child: Text('item one'),
                      searchKeyword: 'item one',
                      value: 0,
                    ),
                    DropdownMenuItemWithSearchField(
                      child: Text('item two'),
                      searchKeyword: 'item two',
                      value: 1,
                    ),
                  ],
                ),
              ],
            )),
          ),
        ));
  }
}
