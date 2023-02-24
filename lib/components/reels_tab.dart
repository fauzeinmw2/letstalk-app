import 'package:flutter/material.dart';

class ReelsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://divedigital.id/wp-content/uploads/2022/12/1-3.jpg"
                  ),
                  fit: BoxFit.fill
              )
          ),
        );
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1 / 1.8,
        crossAxisSpacing: 3,
        mainAxisSpacing: 2,
      ),
    );
  }


}