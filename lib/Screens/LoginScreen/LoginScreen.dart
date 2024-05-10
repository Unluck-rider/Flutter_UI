import 'package:flutter/material.dart';
import 'package:sathish/Colors/colors.dart';

import '../../constant/source_of_design.dart';

import '../Home/home_Page.dart';
import 'Register.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: GestureDetector(
        onTap: ()=> FocusScope.of(context).unfocus(),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/images/login_Banner.jpg",
                  fit: BoxFit.cover,
                  height: height / 2.7,
                  width: width,
                ),
                Container(
                  width: width,
                  height: height / 2.7,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.white])),
                ),
              ],
            ),
            const Text(
              AppName,
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 25,
              ),
            ),
            const Text(
              subName,
              style: TextStyle(fontWeight: FontWeight.w200, color: Colors.grey),
            ),
            SizedBox(
              height: height / 18,
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      child: Text(
                        "  LOGIN",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 18),
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            primary.withOpacity(0.3),
                            primary.withOpacity(0.1)
                          ]),
                          border: const Border(
                              left: BorderSide(color: primary, width: 3))),
                    )),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primary)),
                    prefixIcon: Icon(
                      Icons.email,
                      color: primary,
                    ),
                    labelText: "EMAIL ADDRESS",
                    labelStyle: TextStyle(color: primary, fontSize: 14)),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: TextField(

                obscureText: _isObscure,
                decoration: InputDecoration(
                  focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: primary)),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: primary,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility_off : Icons.visibility,
                      // Toggle icon based on _isObscure
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure =
                            !_isObscure; // Toggle the value of _isObscure
                      });
                    },
                  ),
                  labelText: "PASSWORD",
                  labelStyle: const TextStyle(color: primary, fontSize: 14),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {
                    print("forget is working");
                  },
                  child: const Text(
                    "Forget Password ?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: SizedBox(
                  height: height * 0.06,
                  width: width - 30,
                  child: TextButton(
                    onPressed: () {
                      print("login");
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeMain()));
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(primary),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Login to Account",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    "Don't have an account ?",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    print("Register here  ");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Register()),
                    );
                  },
                  child: const Text(
                    "Create Account",
                    style: TextStyle(fontSize: 16, color: primary),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height / 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(child: Text("Made By")),
                const SizedBox(
                  width: 10,
                ),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.blue,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: "Black Box.Server"),
                    ],
                  ),
                ),
                const Icon(
                  Icons.heart_broken,
                  color: Colors.red,
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "$Version",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),),
      ),
    );
  }
}
