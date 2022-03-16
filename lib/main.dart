import 'package:flutter/material.dart';
import 'package:flutter_2022/providers/homePageProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => HomePageProvider(),
    child: MaterialApp(
      title: 'Flutter',
      home: HomePage(),
    ),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerAge = Provider.of<HomePageProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('provider'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              child: Text(providerAge.eligibleMassage.toString(),style: TextStyle(color: (providerAge.IsEligible==true) ?Colors.green:Colors.red),),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter your age"),
              onChanged: (val) {
                providerAge.checkEligibility(int.parse(val));
              },
            )
          ],
        ),
      ),
    );
  }
}
