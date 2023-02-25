import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text("Your Schedule", style: TextStyle(color: Colors.black),),
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
                          Text("Here’s your Schedule", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                        ],
                      ),

                      SizedBox(height: 10,),

                      Container(
                        // margin: EdgeInsets.all(5),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Color(0xfff7f5dd),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/icons/camera.png"),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Kenali Skintypemu Sejak Dini",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Text(
                                          "Group Call",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 10.0,
                              ),

                              Row(
                                children: [
                                  Image.asset("assets/icons/calender.png"),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    "Friday March 18th, 2023",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 5.0,
                              ),

                              Row(
                                children: [
                                  Image.asset("assets/icons/watch.png"),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    "19.00 - 20.00",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 5.0,
                              ),

                              Row(
                                children: [
                                  Image.asset("assets/icons/people.png"),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    "10/20 Person",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 28.5,
                              ),

                              Divider(
                                thickness: 1.0,
                                color: Color(0xffff1d65),
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset("assets/icons/people_speak.png"),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Text(
                                        "Tasya Farasya",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(
                                    height: 30,
                                    width: 170,
                                    child: ElevatedButton(
                                      child: Text(
                                        "Remind Me",
                                        style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xffff1d65),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20), // <-- Radius
                                        ),
                                      ),
                                      onPressed: () {

                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
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