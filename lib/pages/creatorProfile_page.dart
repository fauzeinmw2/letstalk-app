import 'package:flutter/material.dart';
import 'package:letstalk_app/components/jadwal_tab.dart';
import 'package:letstalk_app/components/reels_tab.dart';
import 'package:letstalk_app/components/privateCall_tab.dart';

class CreatorProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          physics: NeverScrollableScrollPhysics(),
          headerSliverBuilder: (context,isScolled){
            return [
              SliverAppBar(
                backgroundColor: Colors.white,
                collapsedHeight: 250,
                expandedHeight: 250,
                flexibleSpace: Column(
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

                            Text(
                              'Artist',
                              style: TextStyle(color: Colors.grey[700]),
                            ),

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
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SliverPersistentHeader(
                delegate: MyDelegate(
                    TabBar(
                      tabs: [
                        Tab(icon: Image.asset("assets/icons/reel.png")),
                        Tab(icon: Image.asset("assets/icons/date.png")),
                        Tab(icon: Image.asset("assets/icons/phone.png")),
                      ],
                      indicatorColor: Color(0xffff1d65),
                      unselectedLabelColor: Colors.grey,
                      labelColor: Colors.black,
                    )
                ),
                floating: true,
                pinned: true,
              )
            ];
          },
          body: TabBarView(
            children: [
              ReelsTab(),
              JadwalTab(),
              PrivateCallTab()
            ]
          ),
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