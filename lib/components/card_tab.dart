import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:letstalk_app/pages/creatorProfile_page.dart';
import 'package:http/http.dart' as http;

class CardTab extends StatelessWidget {

  CardTab({super.key, this.jenis = "all", this.jml = 0});

  final String? jenis;

  int jml;

  final String apiUrl = "https://api.hackathon.dinotis.com/v1/creators";
  Future<void> _fecthDataCreator() async {
    var result = await http.get(Uri.parse(apiUrl));
    return json.decode(result.body)['creators'];
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _fecthDataCreator(),
      builder: (BuildContext context, AsyncSnapshot snapshot){
        if (snapshot.hasData) {
          if(this.jenis == "kategori"){
            this.jml = 2;
          }else{
            this.jml = snapshot.data.length;
          }
          return GridView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: this.jml,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreatorProfilePage(name: snapshot.data[index]['name'], photo: snapshot.data[index]['profilePhoto'], profesi: snapshot.data[index]['professions'][0]['name'],)
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
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              snapshot.data[index]['profilePhoto']
                          )
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
                          snapshot.data[index]['name'],
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
        }else{
          return Center(child: CircularProgressIndicator());
        }
      }
      // child: ,
    );
  }


}