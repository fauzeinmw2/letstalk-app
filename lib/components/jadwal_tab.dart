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
                          showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              content: Container(
                                height: 238,
                                width: 327,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(32)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("To unlock this content in full you have to pay for:", textAlign: TextAlign.center,),
                                    SizedBox(height: 23,),
                                    Text("Rp 10.000", style: TextStyle(color: Color(0xffff1d65), fontSize: 18, fontWeight: FontWeight.w600)),
                                    SizedBox(height: 23,),
                                    Text("Are you sure want to but this room?", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500))
                                  ],
                                ),
                              ),

                              actions: <Widget>[
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'Cancel'),
                                  child: const Text('No'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) => AlertDialog(
                                        content: Container(
                                          height: 238,
                                          width: 327,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(32)
                                          ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text("Choose your payment method", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                                              SizedBox(height: 23,),
                                              Text("By connecting your wallet, you agree to our Terms of Service and our Privacy Policy.", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500), textAlign: TextAlign.center,)
                                            ],
                                          ),
                                        ),

                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () => Navigator.pop(context, 'Cancel'),
                                            child: const Text('No'),
                                          ),
                                          TextButton(
                                            onPressed: () => Navigator.pop(context, 'OK'),
                                            child: const Text('Yes'),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                  child: const Text('Yes'),
                                ),
                              ],
                            ),
                          );
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
    );
  }
}