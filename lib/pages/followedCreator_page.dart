import 'package:flutter/material.dart';

class FollowedCreaotorPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text("Followed Creator", style: TextStyle(color: Colors.black),),
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
                          Text("Here’s your favorite creator", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                        ],
                      ),

                      SizedBox(height: 10,),

                      GestureDetector(
                        onTap: (){
                          
                        },
                        child: Container(
                          width: 350,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Color(0xfff7f5dd),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 40.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover, image: NetworkImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/948.jpg")),
                                        borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                        color: Colors.redAccent,
                                      ),
                                    ),

                                    SizedBox(width: 10,),

                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Tasya Farasya", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                                          Text("Beauty Influencer", style: TextStyle(fontSize: 12, color: Colors.grey)),
                                        ]
                                    ),
                                  ],
                                ),

                                Image.asset("assets/icons/panah.png"),
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 10,),

                      GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          width: 350,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Color(0xfff7f5dd),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 40.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover, image: NetworkImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/948.jpg")),
                                        borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                        color: Colors.redAccent,
                                      ),
                                    ),

                                    SizedBox(width: 10,),

                                    Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Tasya Farasya", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                                          Text("Beauty Influencer", style: TextStyle(fontSize: 12, color: Colors.grey)),
                                        ]
                                    ),
                                  ],
                                ),

                                Image.asset("assets/icons/panah.png"),
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 10,),

                      GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          width: 350,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Color(0xfff7f5dd),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 40.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover, image: NetworkImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/948.jpg")),
                                        borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                        color: Colors.redAccent,
                                      ),
                                    ),

                                    SizedBox(width: 10,),

                                    Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Tasya Farasya", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                                          Text("Beauty Influencer", style: TextStyle(fontSize: 12, color: Colors.grey)),
                                        ]
                                    ),
                                  ],
                                ),

                                Image.asset("assets/icons/panah.png"),
                              ],
                            ),
                          ),
                        ),
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