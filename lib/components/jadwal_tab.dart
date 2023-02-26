import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:intl/intl.dart';

class JadwalTab extends StatelessWidget {

  JadwalTab({super.key, this.name = "all"});

  final String? name;


  Future<void> _fecthDataMeets() async {
    final String apiUrl = "https://api.hackathon.dinotis.com/v1/meetings?q=$name";
    var result = await http.get(Uri.parse(apiUrl));
    return json.decode(result.body)['meetings'];
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
        future: _fecthDataMeets(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            print(DateFormat.yMMMEd().format(DateTime.now()));
            print(DateTime.parse(snapshot.data[0]['startAt']));
            print(DateFormat.yMMMEd().format(DateTime.parse(snapshot.data[0]['startAt'])));
            return ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: snapshot.data.length,
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
                                    snapshot.data[index]['title'],
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
                              DateFormat.yMMMEd().format(DateTime.parse(snapshot.data[index]['startAt'])),
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
                              // DateFormat.yMMMEd().format(snapshot.data[index]['startAt']).toString(),
                              // .toString(),
                              DateFormat.Hm().format(DateTime.parse(snapshot.data[index]['startAt'])) + " - " + DateFormat.Hm().format(DateTime.parse(snapshot.data[index]['endAt'])),
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
                              snapshot.data[index]['slots'].toString(),
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
                                Image.asset("assets/icons/coin1.png"),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  NumberFormat.decimalPattern().format(snapshot.data[index]['price']),
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
                                            Text("Rp " + NumberFormat.decimalPattern().format(snapshot.data[index]['price']), style: TextStyle(color: Color(0xffff1d65), fontSize: 18, fontWeight: FontWeight.w600)),
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
                                                  height: 300,
                                                  width: 327,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(32)
                                                  ),
                                                  child: Column(
                                                    // crossAxisAlignment: CrossAxisAlignment.center,
                                                    // mainAxisAlignment: MainAxisAlignment.center,
                                                    // textAlign: TextAlign.center
                                                    children: [
                                                      Text("Payment Details", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
                                                      SizedBox(height: 23,),

                                                      Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Text("invoice number", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                                                          Text("agrjsjsbdabkadjakjaijdwj", style: TextStyle(color: Color(0xff979797), fontSize: 16, fontWeight: FontWeight.w500),),

                                                          SizedBox(height: 32,),

                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text("virtual account number", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                                                              Image.asset("assets/images/mandiri.png")
                                                            ],
                                                          ),

                                                          SizedBox(height: 15,),

                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text("89608345644224", style: TextStyle(color: Color(0xff979797), fontSize: 16, fontWeight: FontWeight.w500),),
                                                              Text("Copy", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                                                            ],
                                                          ),

                                                          SizedBox(height: 15,),

                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text("Total", style: TextStyle(color: Color(0xff979797), fontSize: 16, fontWeight: FontWeight.w500),),
                                                              Text(NumberFormat.decimalPattern().format(snapshot.data[index]['price']), style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                                                            ],
                                                          ),

                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              ElevatedButton(
                                                                child: Text(
                                                                  "Payment Now",
                                                                  style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                                                                ),
                                                                style: ElevatedButton.styleFrom(
                                                                  backgroundColor: Color(0xffff1d65),
                                                                  shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(20), // <-- Radius
                                                                  ),
                                                                ),
                                                                onPressed: (){
                                                                  Navigator.pop(context);
                                                                  showDialog<String>(
                                                                      context: context,
                                                                      builder: (BuildContext context) => AlertDialog(
                                                                    content: Container(
                                                                      height: 300,
                                                                      width: 327,
                                                                      decoration: BoxDecoration(
                                                                          borderRadius: BorderRadius.circular(32)
                                                                      ),
                                                                      child: Column(
                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                        children: [
                                                                          Text("Payment Success", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
                                                                          SizedBox(height: 23,),

                                                                          Column(
                                                                            children: [
                                                                              Image.asset("assets/images/success.png"),
                                                                              SizedBox(height: 8,),

                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  ElevatedButton(
                                                                                    child: Text(
                                                                                      "See full content",
                                                                                      style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                                                                                    ),
                                                                                    style: ElevatedButton.styleFrom(
                                                                                      backgroundColor: Color(0xffff1d65),
                                                                                      shape: RoundedRectangleBorder(
                                                                                        borderRadius: BorderRadius.circular(20), // <-- Radius
                                                                                      ),
                                                                                    ),
                                                                                    onPressed: (){
                                                                                      Navigator.pop(context);
                                                                                    },
                                                                                  ),
                                                                                ],
                                                                              )

                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  );

                                                                },
                                                              ),
                                                            ],
                                                          )

                                                        ],
                                                      ),

                                                    ],
                                                  ),
                                                ),
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
          }else{
            return Center(child: CircularProgressIndicator());
          }
        }
      // child:
    );
  }
}