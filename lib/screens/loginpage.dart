import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stack_soft/components/language.dart';
import 'package:stack_soft/main.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  bool englishlang = false;
  Language _language = Language();
  TextDirection txtDirection = TextDirection.rtl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Container(
              height: 200,
              child: Image.asset('assets/images/splash.png'),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Ar"),
                Switch(
                  activeColor: Colors.yellow[700],
                  activeTrackColor: Colors.yellow[600],
                  inactiveThumbColor: Colors.green[300],
                  inactiveTrackColor: Colors.green[200],
                  value: englishlang,
                  onChanged: (val) {
                    englishlang = val;
                    if (englishlang == false) {
                      setState(() {
                        language = "AR";
                        _language.setLanguage(language);
                        txtDirection = TextDirection.rtl;
                      });
                    } else {
                      setState(() {
                        language = "EN";
                        _language.setLanguage(language);
                        txtDirection = TextDirection.ltr;
                      });
                    }
                    // setState(() {});
                  },
                ),
                Text("En"),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Directionality(
              textDirection: txtDirection,
              child: TextFormField(
                // controller: ,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  hintText: _language.phone_number(),
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Directionality(
              textDirection: txtDirection,
              child: TextFormField(
                obscureText: true,
                // controller: ,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: _language.password(),
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.yellow[700],
                borderRadius: BorderRadius.circular(35),
              ),
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  _language.login(),
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                textColor: Colors.white,
                height: 60.0,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Directionality(
              textDirection: txtDirection,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _language.donthave(),
                    style: TextStyle(),
                  ),
                  InkWell(
                    child: Text(
                      _language.joinus(),
                      style: TextStyle(
                        color: Colors.yellow[700],
                        fontSize: 16.0,
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Text(
          _language.allrights(),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
