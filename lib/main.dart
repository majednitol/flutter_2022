import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "awsome app",
    home: const HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        const SliverAppBar(
          pinned: true,
          expandedHeight: 200,
          backgroundColor: Colors.purple,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("sliver app bar, list , grid"),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return Container(
            height: 50,
            alignment: Alignment.center,
            color: Colors.purple[100 * (index % 9)],
            child: Text("purple $index"),
          );
        }, childCount: 20)),
        SliverGrid(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              height: 100,
              alignment: Alignment.center,
              color: Colors.green[100 * (index % 9)],
              child: Text("green $index"),
            );
          }, childCount: 20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
        )
      ],
    ));
  }
}
