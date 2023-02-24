import 'package:flutter/material.dart';
import 'package:letstalk_app/pages/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.white,
          child: ListView(
            padding: const EdgeInsets.fromLTRB(29, 40, 29, 29),
            children: [
              const Text(
                "It's good to see you",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: 29,
              ),

              Image.asset(
                "assets/images/register_image.png",
                width: 168,
                height: 204,
              ),

              const SizedBox(
                height: 29,
              ),

              Form(
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Container(
                        width: 320.0,
                        height: 52,
                        child: TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Phone Number",
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14
                            ),
                            fillColor: Color(0xffff1d65),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color:  Color(0xffff1d65),
                                  width: 2.0
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color:  Color(0xffff1d65),
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      Container(
                        width: 320.0,
                        height: 52,
                        child: TextFormField(
                          decoration: new InputDecoration(
                            labelText: "email address",
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14
                            ),
                            fillColor: Color(0xffff1d65),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color:  Color(0xffff1d65),
                                  width: 2.0
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color:  Color(0xffff1d65),
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      Container(
                        width: 320.0,
                        height: 52,
                        child: TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14
                            ),
                            fillColor: Color(0xffff1d65),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color:  Color(0xffff1d65),
                                  width: 2.0
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color:  Color(0xffff1d65),
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      Container(
                        width: 320.0,
                        height: 52,
                        child: TextFormField(
                          decoration: new InputDecoration(
                            labelText: "confirmation password",
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14
                            ),
                            fillColor: Color(0xffff1d65),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color:  Color(0xffff1d65),
                                  width: 2.0
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color:  Color(0xffff1d65),
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account with us?",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black
                            ),
                          ),

                          TextButton(
                            child: Text(
                              "Login here",
                              style: TextStyle(color: Color(0xffff1d65)),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 19,
                      ),

                      SizedBox(
                        width: 320.0,
                        height: 55.0,
                        child: ElevatedButton(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffff1d65),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6), // <-- Radius
                            ),
                          ),
                          onPressed: () {

                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 5,
              ),

              Text(
                "or",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(71, 5, 71,0),
                child: SizedBox(
                  width: 190.0,
                  height: 36.0,
                  child: ElevatedButton(
                    child: Row(
                      children: [
                        Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/800px-Google_%22G%22_Logo.svg.png",
                          width: 23,
                        ),
                        Text(
                          " Sign up with google",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                    ),
                    onPressed: () {

                    },
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}