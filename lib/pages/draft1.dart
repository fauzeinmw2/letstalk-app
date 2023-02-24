import 'package:flutter/material.dart';
import 'package:letstalk_app/components/jadwal_tab.dart';
import 'package:letstalk_app/components/reels_tab.dart';
import 'package:letstalk_app/components/privateCall_tab.dart';

class ProfileCreatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.arrow_back, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            // profile photo

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

            SizedBox(height: 10,),

            // username
            Text(
              'Oma Roob',
              style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
            ),

            SizedBox(height: 10,),

            Text(
              'Artist',
              style: TextStyle(color: Colors.grey[700]),
            ),

            // number of following, followers, likes


            SizedBox(height: 10),

            // buttons -> edit profile, insta links, bookmark
            SizedBox(
              width: 205.0,
              height: 30.0,
              child: ElevatedButton(
                child: Text(
                  "Follow",
                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
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

            SizedBox(height: 31),

            TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.grid_3x3, color: Colors.black),
                ),
                Tab(
                  icon: Icon(Icons.favorite, color: Colors.black),
                ),
                Tab(
                  icon: Icon(Icons.lock_outline_rounded, color: Colors.black),
                ),
              ],
            ),

            Expanded(
              child: TabBarView(
                children: [
                  ReelsTab(),
                  JadwalTab(),
                  PrivateCallTab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
