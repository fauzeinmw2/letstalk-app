import 'package:flutter/material.dart';
import 'package:letstalk_app/components/jadwal_tab.dart';
import 'package:letstalk_app/components/reels_tab.dart';
import 'package:letstalk_app/components/privateCall_tab.dart';
import 'package:letstalk_app/pages/register_page.dart';

class EditProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Edit Profile", style: TextStyle(color: Colors.black),),
        leading: Icon(Icons.arrow_back, color: Colors.black),
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
                  margin: EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover, image: NetworkImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/948.jpg")),
                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                ),

                Form(
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Full Name", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
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
                                  hintText: "Nadine Lee",
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
                            Text("Email", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
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
                                  hintText: "nadineeely12@gmail.com",
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
                            Text("Phone Number", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
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
                                  hintText: "+6281230967854",
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
                            Text(
                              "Language",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10,),

                        Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => EditProfilePage()
                                  ),
                                );
                              },
                              child: Container(
                                width: 350,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color(0xffff1d65),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                          children: [
                                            Text("English", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),)
                                          ]
                                      ),
                                      Image.asset("assets/icons/panah.png"),
                                    ],
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
                            Text(
                              "Password",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10,),

                        Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => EditProfilePage()
                                  ),
                                );
                              },
                              child: Container(
                                width: 350,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color(0xff9bdeac),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                          children: [
                                            Text("Change Your Password", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),)
                                          ]
                                      ),
                                      Image.asset("assets/icons/panah.png"),
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
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}


class MyDelegate extends SliverPersistentHeaderDelegate{
  MyDelegate(this.tabBar);
  final TabBar tabBar;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: tabBar,
    );
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }

}