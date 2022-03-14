import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "my app",
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.purple),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int data = 0;
  void changeData() {
    setState(() {
      data = data + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button on click'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Text('$data',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
              ),
            ),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.orange),
                  primary: Colors.orange,
                  // backgroundColor: Colors.grey,
                  padding: EdgeInsets.all(3.0),
                ),
                onPressed: changeData,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 6.0),
                  child: Text(
                    "click me ",
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                )),
            SizedBox(
              height: 50,
            ),
            TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.blue,

                  // backgroundColor: Colors.red,
                  padding: EdgeInsets.all(3.0),
                ),
                onPressed: changeData,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 6.0),
                  child: Text(
                    "click me ",
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                )),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onPrimary: Colors.black,
                  padding: EdgeInsets.all(3.0),
                ),
                onPressed: changeData,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 6.0),
                  child: Text(
                    "click me ",
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                )),
            SizedBox(
              height: 50,
            ),
            // icon add any type button
            OutlinedButton.icon(
              icon: Icon(
                Icons.add,
                size: 50.0,
                color: Colors.red,
              ),
              label: Text("icon",
                  style:
                      TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 10,
                shadowColor: Colors.amber,
                minimumSize: Size(200, 100),
                primary: Colors.white,
                backgroundColor: Colors.blue,
                // i want to
                padding: EdgeInsets.all(6.0),
              ),
              onPressed: changeData,
              //if i want to disible
              // onPressed: null
            ),
          ],
        ),
      ),
    );
  }
}
