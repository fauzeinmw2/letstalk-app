import 'package:flutter/material.dart';

class PrivateCallTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Color(0xFFFFFFFF),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Image.asset("assets/images/private_call.png"),

            SizedBox(
              height: 4.0,
            ),

            Text(
              "Sorry, the creator of your choice has not opened a private call schedule at this time",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}