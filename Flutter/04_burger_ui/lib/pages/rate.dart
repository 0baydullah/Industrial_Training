import 'package:flutter/material.dart';

class Rate extends StatefulWidget {
  Rate(this.img,{super.key});
  String img;
  @override
  State<Rate> createState() => _RateState();
}

class _RateState extends State<Rate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 130,),
            const Text("Rate your service",
              style: TextStyle(fontWeight:FontWeight.w700, fontSize:24, ),
            ),

            const SizedBox(height: 50,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.thumb_down_alt_outlined,),
                const SizedBox(width: 55,),

                Container(
                  width: 110,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset(widget.img, fit: BoxFit.fill,),
                ),

                const SizedBox(width: 55,),
                const Icon(Icons.thumb_up_outlined,color: Colors.red,),

              ],
            ),



            const SizedBox(height: 130,),
            const Text(
              "How was your delivery?",
              style: TextStyle(fontWeight:FontWeight.w700, fontSize:24, ),
            ),

            const SizedBox(height: 50,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.thumb_down_alt_outlined,),
                const SizedBox(width: 20,),

                Container(
                  width: 190,
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    ///color: Colors.green,
                  ),
                  child: const CircleAvatar(
                    ///radius: Radius.circular(30),
                    radius: 40,
                    backgroundImage:
                    NetworkImage('https://scontent.fdac24-1.fna.fbcdn.net/v/t39.30808-6/362657792_1353125775295421_5520296646669891192_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=a2f6c7&_nc_eui2=AeHV1ixirjz7QzHmtnTAom-QNAkGX8ZZdEs0CQZfxll0S75_zqhmkyrFTDL30V7rrNjDFjEgoW5IuKCXsPPOX1nq&_nc_ohc=5bWwCHklphQAX-wMvrv&_nc_ht=scontent.fdac24-1.fna&oh=00_AfDXHTv790YLJsPbtc3gxoILtFeSnchbSESmr-bMiw3c_Q&oe=650A2C17h'),
                  ),
                ),

                const SizedBox(width: 20,),
                const Icon(Icons.thumb_up_alt_outlined,color: Colors.red,),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
