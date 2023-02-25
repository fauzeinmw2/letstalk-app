import 'package:flutter/material.dart';
import 'package:letstalk_app/components/card_bottomModal.dart';
import 'package:letstalk_app/components/card_tab.dart';
import 'package:letstalk_app/components/jadwal_tab.dart';
import 'package:letstalk_app/pages/userProfile_page.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> items = [
    "Categories",
    "Popular Rooms",
    "Ongoing",
  ];

  Future<void> _showBottomModal(String title ) async {

    await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40)
          )
        ),
        builder: (BuildContext ctx) {
          return Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
              bottom: MediaQuery.of(ctx).viewInsets.bottom + 20,
            ),
            child: SingleChildScrollView(
              child: Container(
                height: 740,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 135,
                          height: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                            color: Color(0xff979797)
                          ),
                        ),

                        SizedBox(height: 5,),

                        Container(
                          width: 70,
                          height: 5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(100)),
                              color: Color(0xff979797)
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 48,),

                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 48,
                        color: Color(0xffff1d65),
                        fontWeight: FontWeight.w600
                      ),
                    ),

                    SizedBox(height: 48,),

                    Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Search creator",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.0),
                              borderSide: BorderSide(
                                color:  Colors.black,
                                width: 2,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.0),
                              borderSide: BorderSide(
                                  color:  Colors.black,
                                  width: 2.0
                              ),
                            ),
                            suffixIcon: Icon(Icons.search, color: Colors.black,),
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 17
                            ),
                            contentPadding: EdgeInsets.all(15)
                        ),
                      ),
                    ),

                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: items.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, index) {
                            return Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      current = index;
                                    });
                                  },
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 300),
                                    margin: const EdgeInsets.all(5),
                                    // height: 32,
                                    decoration: BoxDecoration(
                                      color: current == index
                                          ? Color(0xffff1d65)
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(color: Colors.black, width: 2),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          items[index],
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: current == index
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Visibility(
                                    visible: current == index,
                                    child: Container(
                                      width: 5,
                                      height: 5,
                                      decoration: const BoxDecoration(
                                          color: Colors.black,
                                          shape: BoxShape.circle),
                                    ))
                              ],
                            );
                          }),
                    ),

                    CardTab()
                  ],
                ),
              ),
            ),
          );
        });
  }

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white
        ),
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UserProfilePage()
                          ),
                        );
                      },
                      child: Container(
                        width: 70.0,
                        height: 70.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover, image: NetworkImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/948.jpg")),
                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                          color: Colors.redAccent,
                        ),
                      ),
                    ),

                    SizedBox(width: 20,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "hi ayu",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Image.asset("assets/icons/coin.png"),
                            SizedBox(width: 7,),
                            Text(
                              "210.000",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(38),
                  child: Image.asset("assets/icons/lonceng.png"),
                )
              ],
            ),

            Container(
              width: 350.0,
              height: 158.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("assets/images/banner.png")),
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                color: Colors.redAccent,
              ),
            ),

            SizedBox(height: 14,),

            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search creator",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    borderSide: BorderSide(
                      color:  Colors.black,
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    borderSide: BorderSide(
                      color:  Colors.black,
                      width: 2.0
                    ),
                  ),
                  suffixIcon: Icon(Icons.search, color: Colors.black,),
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 17
                  ),
                  contentPadding: EdgeInsets.all(15)
                ),
              ),
            ),

            SizedBox(
              width: double.infinity,
              height: 60,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.all(5),
                            // height: 32,
                            decoration: BoxDecoration(
                              color: current == index
                                  ? Color(0xffff1d65)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.black, width: 2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  items[index],
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: current == index
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                            visible: current == index,
                            child: Container(
                              width: 5,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle),
                            ))
                      ],
                    );
                  }),
            ),

          Container(
              margin: const EdgeInsets.only(top: 5),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  if(current == 0 )

                    Column(
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                _showBottomModal("Entertaiment");
                              },

                              child: Container(
                                margin: EdgeInsets.all(5),
                                height: 215,
                                width: 164,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 36),
                                      child: Text(
                                        "Entertaiment",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: (){
                                _showBottomModal("Education");
                              },

                              child: Container(
                                margin: EdgeInsets.all(5),
                                height: 215,
                                width: 164,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 36),
                                      child: Text(
                                        "Education",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                _showBottomModal("Healt");
                              },

                              child: Container(
                                margin: EdgeInsets.all(5),
                                height: 215,
                                width: 164,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 36),
                                      child: Text(
                                        "Healt",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: (){
                                _showBottomModal("Healt");
                              },

                              child: Container(
                                margin: EdgeInsets.all(5),
                                height: 215,
                                width: 164,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 36),
                                      child: Text(
                                        "Healt",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )

                  else
                    CardTab()
                ],
              ),
          )
          ]
        ),
      ),
    );
  }
}