// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     title: "Flutter",
//     home: HomePage(),
//     theme: ThemeData(primarySwatch: Colors.blue),
//   ));
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int value = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('setState and Provider'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                   child: Text(
//                 value.toString(),
//                 style: TextStyle(fontSize: 30),
//               )),
//               SizedBox(
//                 height: 40,
//               ),
//               ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.red,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       value++;
//                     });
//                   },
//                   child: Text("click here"))
//             ],
//           ),
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_2022/data.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Data(),
    child: MaterialApp(
      title: "Flutter",
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.blue),
    ),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final providerdata = Provider.of<Data>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('setState and Provider'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Text(
                providerdata.value.toString(),
                style: TextStyle(fontSize: 30),
              )),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  onPressed: () {
                    providerdata.increment();
                  },
                  child: Text("click here")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  onPressed: () {
                  Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => Recived()),
                   );
                  },
                  child: Text("sent"))
            ],
          ),
        ));
  }
}

class Data extends ChangeNotifier {
  int value = 0;
  increment() {
    value++;
    notifyListeners();
  }
}
