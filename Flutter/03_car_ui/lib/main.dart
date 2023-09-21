import 'package:car_app/card2.dart';
import 'package:flutter/material.dart';
import 'cardd.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "Car App UI",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        drawer: Drawer(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications,color: Colors.blue,),
              label: 'Calls',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined,color: Colors.blue,),
              label: 'Camera',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined,color: Colors.blue,),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu,color: Colors.blue,),
              label: 'Chats',
            ),
          ],
        ),

        body: Align(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 200,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "With Corporate Difference",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Enjoy the fun driving in Enterprise",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: SizedBox(
                              width: MediaQuery.sizeOf(context).width / 1.4,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: "Search a Car",
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 57,
                            width: 57,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blue[900],
                            ),
                            child: Icon(
                              Icons.bar_chart,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Brands",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    InkWell(
                      child: Text(
                        "View All",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue[900],
                        ),
                      ),
                      onTap: () {
                        print("View All");
                      },
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:[
                    Cardd("https://logos-world.net/wp-content/uploads/2021/03/Englon-Logo-700x394.png"),
                    Cardd("https://logos-world.net/wp-content/uploads/2021/03/Askam-Logo-700x394.png"),
                    Cardd("https://logos-world.net/wp-content/uploads/2021/03/Venucia-Logo-700x394.jpg"),
                    Cardd("https://logos-world.net/wp-content/uploads/2021/03/Englon-Logo-700x394.png"),
                    Cardd("https://logos-world.net/wp-content/uploads/2021/03/Askam-Logo-700x394.png"),
                    Cardd("https://logos-world.net/wp-content/uploads/2021/03/Venucia-Logo-700x394.jpg"),
                  ],

                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Most Rented",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    InkWell(
                      child: Text(
                        "View All",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue[900],
                        ),
                      ),
                      onTap: () {
                        print("View All");
                      },
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:[
                    Card2("https://www.topgear.com/sites/default/files/2022/07/6_0.jpg", "Sports", "Electric UV/c 81", "15"),
                    Card2("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpXWeEJX6NhJ2R1CUrMIkaNcKkXSuzu9z1wg&usqp=CAU","Economy","AutoTech Ces 80","10"),
                    Card2("https://www.topgear.com/sites/default/files/2022/07/6_0.jpg", "Sports", "Electric UV/c 81", "15"),
                    Card2("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpXWeEJX6NhJ2R1CUrMIkaNcKkXSuzu9z1wg&usqp=CAU","Economy","AutoTech Ces 80","10"),
                    Card2("https://www.topgear.com/sites/default/files/2022/07/6_0.jpg", "Sports", "Electric UV/c 81", "15"),
                    Card2("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpXWeEJX6NhJ2R1CUrMIkaNcKkXSuzu9z1wg&usqp=CAU","Economy","AutoTech Ces 80","10"),
                  ],


                ),
              ),
            ],
          ),


    )));
  }

}
