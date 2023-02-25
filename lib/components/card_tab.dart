import 'package:flutter/material.dart';
import 'package:letstalk_app/pages/creatorProfile_page.dart';

class CardTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 2,
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CreatorProfilePage()
                ),
              );
            },
          child: Container(
            margin: EdgeInsets.all(5),
            height: 215,
            width: 164,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/948.jpg")
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white70
                  ),
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Dr. Abimanyu",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 239
      ),
    );
  }


}