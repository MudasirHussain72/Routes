import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Routes Demo",
      initialRoute: "/",
      routes: {
        "/": (context) => route_1(),
        "/route2": (context) => route_2(),
        "/route3": (context) => route_3(),
      },
    );
  }
}

class route_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),
      body: Column(
        children: [
          Text("Hello World Page 1"),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/route2');
            },
            child: Text("Move to Page 2"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/route3');
            },
            child: Text("Move to Page 3"),
          ),
        ],
      ),
    );
  }
}

class route_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Column(
        children: [
          Text("Hello World Page 2"),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: Text("Move to Page 1"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/route3');
            },
            child: Text("Move to Page 3"),
          ),
        ],
      ),
    );
  }
}

class route_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 3"),
      ),
      body: Column(
        children: [
          Text("Hello World Page 3"),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: Text("Move to Page 1"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/route2');
            },
            child: Text("Move to Page 2"),
          ),
        ],
      ),
    );
  }
}
