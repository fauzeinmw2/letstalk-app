import 'package:flutter/material.dart';

class JadwalTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(5),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Color(0xFFFFFFFF),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 0,
                blurRadius: 5,
                offset: Offset(0, 4),
              )
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
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
                      height: 30,
                      width: 170,
                      child: ElevatedButton(
                        child: Text(
                          "Booking",
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
        );
      },
      // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //   crossAxisCount: 1,
      //   // childAspectRatio: 3 / 2,
      //   // crossAxisSpacing: 3,
      //   // mainAxisSpacing: 2,
      // ),
    );
  }
}