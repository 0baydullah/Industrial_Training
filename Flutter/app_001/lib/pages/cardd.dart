import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:app_001/pages/login.dart';
import 'package:app_001/pages/home.dart';
import 'package:app_001/pages/details.dart';
import 'package:app_001/pages/cardd.dart';


class Cardd extends StatelessWidget {
  Cardd(this.url,this.name,{super.key});
  String url,name;

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
                onTap: () {

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Details(url,name)));
                },
              ),
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(25),
                ),
                image: DecorationImage(
                  image: NetworkImage('$url'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 3),
            Text(
              "$name",
              style: TextStyle(
                fontFamily: 'IndieFlower',
                fontSize: 18,
              ),
            ),
          ],
          //  Image.network("$url")),
        ),
      ),
    );
  }
}

