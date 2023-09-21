import 'package:flutter/material.dart';


class Cardd extends StatelessWidget {
  Cardd(this.url,{super.key});
  String url;

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 180,
      width: 180,
      child: Center(
        child: Column(

          children: [
            Container(
              child: InkWell(
                onTap: () {},
              ),
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: const BorderRadius.all(
                  Radius.circular(25),
                ),
                image: DecorationImage(
                  image: NetworkImage('$url'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Text(
            //   "$name",
            //   style: TextStyle(
            //     fontSize: 18,
            //   ),
            // ),
          ],
          //  Image.network("$url")),
        ),
      ),
    );
  }
}
