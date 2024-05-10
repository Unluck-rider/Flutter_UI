import 'package:flutter/material.dart';

import '../../Colors/colors.dart';
import '../../base/constant.dart';
import '../../constant/source_of_design.dart';


class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String? _selectedGender;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/images/login_Banner.jpg",
                    fit: BoxFit.cover,
                    height: height / 5.0,
                    width: width,
                  ),
                  Container(
                    width: width,
                    height: height / 4.9,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.transparent, Colors.white])),
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: const  EdgeInsets.symmetric(horizontal: 10.0,vertical: 65.0),

                       child:GestureDetector(
                         onTap: (){
                           Constant.backToPrev(context);
                           print("register Back");
                         },
                         child:const  Icon(
                           Icons.arrow_circle_left_outlined,
                           color: primary,
                           size: 40,
                         ),
                       )
                      )
                    ],
                  )
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
                style:
                TextStyle(fontWeight: FontWeight.w200, color: Colors.grey),
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
                          "  REGISTER",
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
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primary)),
                    prefixIcon: Icon(
                      Icons.person,
                      color: primary,
                    ),
                    labelText: "NAME ",
                    labelStyle: TextStyle(color: primary, fontSize: 14),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primary)),
                    prefixIcon: Icon(
                      Icons.email,
                      color: primary,
                    ),
                    labelText: "EMAIL",
                    labelStyle: TextStyle(color: primary, fontSize: 14),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.person,
                          color: primary, // Change color to your desired color
                        ),
                        const SizedBox(width: 10),
                        // Spacing between icon and text
                        const Text(
                          "GENDER",
                          style: TextStyle(
                            color:
                            primary, // Change color to your desired color
                          ),
                        ),
                        SizedBox(width: 20),
                        // Add spacing between gender icon and radio buttons
                        Column(
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: "male",
                                  groupValue: _selectedGender,
                                  onChanged: (value) {
                                    setState(() {
                                      _selectedGender = value!;
                                    });
                                  },
                                  activeColor: primary,
                                ),
                                const Text(
                                  "Male",
                                  style: TextStyle(color: primary),
                                ),
                                const SizedBox(width: 20),
                                // Add spacing between male and female radio buttons
                                Radio(
                                  value: "female",
                                  groupValue: _selectedGender,
                                  onChanged: (value) {
                                    setState(() {
                                      _selectedGender = value!;
                                    });
                                  },
                                  activeColor: primary,
                                ),
                                const Text(
                                  "Female",
                                  style: TextStyle(color: primary),
                                ),
                              ],
                            ),
                            // Additional code for others option if needed
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primary)),
                    prefixIcon: Icon(
                      Icons.phone_android,
                      color: primary,
                    ),
                    labelText: "MOBILE NUMBER",
                    labelStyle: TextStyle(color: primary, fontSize: 14),
                  ),
                ),
              ),
              SizedBox(
                height: height / 13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Checkbox(
                    value: false, // You can set initial value here
                    onChanged: (bool? value) {
                      // Handle checkbox state change
                    },
                  ),
                  const Flexible(
                    child: Text(

                          "Your use of the application is also subject \n to our Privacy Policy",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey
                      ),


                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: SizedBox(
                    height: height * 0.06,
                    width: width - 30,
                    child: TextButton(
                      onPressed: () {
                        print("Register");
                      },
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(primary),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      child: const Text(
                        "Register",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
