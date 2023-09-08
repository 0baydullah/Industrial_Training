import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Details extends StatefulWidget {
   Details(this.url,this.name,{super.key});
   String url,name;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 157, 241, 227),
      body: Center(
        child:  SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "${widget.url}",
                  height: 500,
                  width: 400,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20,),
              Text("${widget.name}",
                style:  TextStyle(
                  color: Colors.red,
                  fontSize: 60,
                  fontFamily: "IndieFlower",
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),

              SizedBox( /// for back button
                height: 30,
                width: 180,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context );
                  },
                  child: Text("Back"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan[900],
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                    shape: StadiumBorder(),
                  ),
                ),
              ),

              SizedBox(height: 10,),

              SizedBox(
                height: 30,
                width: 180,
                child: ElevatedButton( /// for start button
                  onPressed: (){
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: Text("Start"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[900],
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                    shape: StadiumBorder(),
                  ),
                ),
              ),

              SizedBox(height: 10,),

              SizedBox( /// for Exit Button
                height: 30,
                width: 180,
                child: ElevatedButton(
                  onPressed: (){
                    SystemNavigator.pop();
                  },
                  child: Text("Exit"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[900],
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                    shape: StadiumBorder(),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
