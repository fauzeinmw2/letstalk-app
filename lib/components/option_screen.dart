import 'package:flutter/material.dart';

class OptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 200,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Icon(Icons.favorite_outline, color: Colors.white,),
                  Text('601k', style: TextStyle(color: Colors.white),),
                  SizedBox(height: 20),
                  Icon(Icons.comment_rounded, color: Colors.white),
                  Text('1123', style: TextStyle(color: Colors.white)),
                  SizedBox(height: 20),
                  Transform(
                    transform: Matrix4.rotationZ(5.8),
                    child: Icon(Icons.send, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height: 50,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(width: 16),
                  CircleAvatar(
                    child: Icon(Icons.person, size: 18, color: Colors.white,),
                    radius: 16,
                  ),
                  SizedBox(width: 12),
                  Text('Group 13', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
                  SizedBox(width: 10),
                  Icon(Icons.verified, size: 15, color: Colors.white),
                  SizedBox(width: 6),
                ],
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text('MotionHack X Dinotis 2.0', style: TextStyle(color: Colors.white, fontSize: 12,)),
              ),
            ],
          ),


        ],
      ),
    );
  }
}