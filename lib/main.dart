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
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
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
  var contacts = [
    {'name': 'Alice', 'phone': '123-456-7890', 'unread': 2},
    {'name': 'Bob', 'phone': '987-654-3210', 'unread': 0},
    {'name': 'Charlie', 'phone': '555-123-4567', 'unread': 5},
    {'name': 'David', 'phone': '111-222-3333', 'unread': 1},
    {'name': 'Eve', 'phone': '444-555-6666', 'unread': 0},
    {'name': 'Frank', 'phone': '777-888-9999', 'unread': 3},
    {'name': 'Grace', 'phone': '222-333-4444', 'unread': 0},
    {'name': 'Heidi', 'phone': '666-777-8888', 'unread': 7},
    {'name': 'Ivan', 'phone': '999-000-1111', 'unread': 0},
    {'name': 'Judy', 'phone': '333-444-5555', 'unread': 4},
    {'name': 'Karl', 'phone': '888-999-0000', 'unread': 0},
    {'name': 'Leo', 'phone': '000-111-2222', 'unread': 1},
    {'name': 'Mallory', 'phone': '121-232-3434', 'unread': 0},
    {'name': 'Nina', 'phone': '565-676-7878', 'unread': 6},
    {'name': 'Oscar', 'phone': '898-909-0101', 'unread': 0},
    {'name': 'Peggy', 'phone': '232-343-4545', 'unread': 2},
    {'name': 'Quentin', 'phone': '676-787-8989', 'unread': 0},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        child: ListView(
          children: [
            ...contacts.map((contactData) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadowColor: Colors.black87,
                  child: ListTile(
                    leading: const Icon(
                      Icons.account_circle_rounded,
                    ),
                    title: Text(contactData['name'] as String),
                    subtitle: Text(contactData['phone'] as String),
                    trailing: (contactData['unread'] as int) > 0
                        ? Badge(label: CircleAvatar(child: Text((contactData['unread'] as int).toString())))
                        : null,
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
