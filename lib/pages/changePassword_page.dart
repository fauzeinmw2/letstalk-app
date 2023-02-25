import 'package:flutter/material.dart';

class ChangePasswordPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Change Password", style: TextStyle(color: Colors.black),),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(
                10,
                10,
                10,
                10,
              ),
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: const Icon(
                  Icons.arrow_back_sharp,
                  size: 30,
                  color: Colors.black
              ),
            ),
          )
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Recent Password", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                            width: 350.0,
                            height: 52,
                            child: TextFormField(
                              decoration: new InputDecoration(
                                labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14
                                ),
                                hintText: "Enter your recent password",
                                fillColor: Color(0xffff1d65),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide: BorderSide(
                                      color:  Color(0xffff1d65),
                                      width: 2.0
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide: BorderSide(
                                    color:  Color(0xffff1d65),
                                    width: 2.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      Row(
                        children: [
                          Text("New Password", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                        ],
                      ),
                      SizedBox(height: 10,),

                      Row(
                        children: [
                          Container(
                            width: 350.0,
                            height: 52,
                            child: TextFormField(
                              decoration: new InputDecoration(
                                hintText: "Enter your new password",
                                labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14
                                ),
                                fillColor: Color(0xffff1d65),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide: BorderSide(
                                      color:  Color(0xffff1d65),
                                      width: 2.0
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide: BorderSide(
                                    color:  Color(0xffff1d65),
                                    width: 2.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      Row(
                        children: [
                          Text("Rewrite New Password", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                        ],
                      ),
                      SizedBox(height: 10,),

                      Row(
                        children: [
                          Container(
                            width: 350.0,
                            height: 52,
                            child: TextFormField(
                              decoration: new InputDecoration(
                                hintText: "Rewrite your new password",
                                labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14
                                ),
                                fillColor: Color(0xffff1d65),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide: BorderSide(
                                      color:  Color(0xffff1d65),
                                      width: 2.0
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide: BorderSide(
                                    color:  Color(0xffff1d65),
                                    width: 2.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      SizedBox(height: 50,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: (){

                            },
                            child: Container(
                              width: 320,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xffff1d65),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Change Your Password", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}