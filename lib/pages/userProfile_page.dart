import 'package:flutter/material.dart';
import 'package:letstalk_app/components/jadwal_tab.dart';
import 'package:letstalk_app/components/reels_tab.dart';
import 'package:letstalk_app/components/privateCall_tab.dart';
import 'package:letstalk_app/pages/followedCreator_page.dart';
import 'package:letstalk_app/pages/register_page.dart';
import 'package:letstalk_app/pages/editProfile_page.dart';
import 'package:letstalk_app/pages/schedule_page.dart';

class UserProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Profile", style: TextStyle(color: Colors.black),),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100.0,
                    height: 100.0,
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

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      'Oma Roob',
                      style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
                    ),

                    SizedBox(height: 10,),

                    Row(
                      children: [
                        Image.asset("assets/icons/phoneUser.png"),
                        Text(
                          ' +6281230967854',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),

                    SizedBox(height: 10),

                    // buttons -> edit profile, insta links, bookmark
                    SizedBox(
                      height: 50,
                      width: 350,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xff9bdeac),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 79,
                              decoration: BoxDecoration(
                                  color: Color(0xff71be8c),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(16),
                                child: Text("Coins", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),),
                              ),
                            ),

                            SizedBox(width: 15,),

                            Image.asset("assets/icons/coin.png"),

                            SizedBox(width: 5,),

                            Text(
                              "210.000",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500
                              ),
                            ),

                            SizedBox(width: 134,),

                            Image.asset("assets/icons/plus.png"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 25, 20, 10),
              child: Text(
                "LetsTalk Setting",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),

            Column(
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
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(26, 0, 26, 10),
                    child: Container(
                      width: 350,
                      height: 50,
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
                                Image.asset("assets/icons/people1.png"),
                                SizedBox(width: 18,),
                                Text("Edit Profile", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),)
                              ]
                            ),

                            Image.asset("assets/icons/panah.png"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FollowedCreaotorPage()
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(26, 0, 26, 10),
                    child: Container(
                      width: 350,
                      height: 50,
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
                                  Image.asset("assets/icons/people2.png"),
                                  SizedBox(width: 18,),
                                  Text("Followed Creators", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),)
                                ]
                            ),

                            Image.asset("assets/icons/panah.png"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SchedulePage()
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(26, 0, 26, 10),
                    child: Container(
                      width: 350,
                      height: 50,
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
                                  Image.asset("assets/icons/calender_black.png"),
                                  SizedBox(width: 18,),
                                  Text("Your Schedule", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),)
                                ]
                            ),

                            Image.asset("assets/icons/panah.png"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterPage()
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(26, 0, 26, 10),
                    child: Container(
                      width: 350,
                      height: 50,
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
                                  Image.asset("assets/icons/help.png"),
                                  SizedBox(width: 18,),
                                  Text("Help", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),)
                                ]
                            ),

                            Image.asset("assets/icons/panah.png"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 97,),

            Padding(
              padding: const EdgeInsets.fromLTRB(120, 0, 120, 0),
              child: SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text(
                    "Log Out"
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff283838),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // <-- Radius
                    ),
                  ),
                ),
              ),
            )
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