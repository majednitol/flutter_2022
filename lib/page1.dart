import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(fit: StackFit.expand, children: [
        Image.asset(
          "assets/m.jpg",
          fit: BoxFit.cover,
          color: Colors.black54,
          colorBlendMode: BlendMode.darken,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/k.png", width: 120.0, height: 120.0),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Container(
                        height: 350.0,
                        width: 390.0,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 25.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: TextField(
                                autofocus: false,
                                autocorrect: false,
                                style: TextStyle(fontSize: 20.0),
                                decoration: InputDecoration(
                                    hintText: "Username",
                                    border: InputBorder.none,
                                    filled: true,
                                    fillColor: Colors.grey[200],
                                    contentPadding: const EdgeInsets.all(15.0)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0,
                                  right: 20.0,
                                  left: 20.0,
                                  bottom: 10.0),
                              child: TextField(
                                autofocus: false,
                                obscureText: true,
                                autocorrect: false,
                                style: TextStyle(fontSize: 20.0),
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    border: InputBorder.none,
                                    filled: true,
                                    fillColor: Colors.grey[200],
                                    contentPadding: const EdgeInsets.all(15.0)),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 17.0),
                                  child: Text(
                                    "Forget password ?",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 40.0),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16, horizontal: 100),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Login",
                                  style: TextStyle(fontSize: 20.0),
                                ))
                          ],
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}
