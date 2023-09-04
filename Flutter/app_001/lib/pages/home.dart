import 'package:app_001/pages/details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_001/pages/cardd.dart';

class Home extends StatefulWidget {
  Home(this.text, {super.key});
  String text;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<String> items = List<String>.generate(100, (i) => 'Item $i');

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 157, 241, 227),
      appBar: AppBar(
        title: const Text("Home "),
        backgroundColor: Colors.teal[900],
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
                'https://media.istockphoto.com/id/1288525678/vector/futuristic-blue-cyan-and-black-abstract-gaming-banner-design-with-metal-technology-concept.jpg?s=1024x1024&w=is&k=20&c=MxtLHp1kCeAgLwUofCOHgFbltcpryqWVHSxd6kScNi0='),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Welcome ${widget.text}!",
              style: const TextStyle(
                fontFamily: 'IndieFlower',
                letterSpacing: 4,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Label("Horizontal List :"),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: 200,
              color: Colors.cyan[100],
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: _list(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Label("Vartical List :"),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: 220,
              color: Colors.cyan[100],
              child: GridView.count(
                crossAxisCount: 2,
                padding: EdgeInsets.all(10),
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                primary: false,
                children: [
                  Cardd(
                      'https://e0.pxfuel.com/wallpapers/839/689/desktop-wallpaper-object-object-hidden-object-and-single-object-graphy-awesome-background.jpg',
                      "Dice"),
                  Cardd(
                      'https://c4.wallpaperflare.com/wallpaper/255/197/222/nuke-wallpaper-preview.jpg',
                      "Bomb"),
                  Cardd(
                      "https://i2.pickpik.com/photos/959/670/400/glass-cup-drink-wine-glass-preview.jpg",
                      "Glass"),
                  Cardd(
                      "https://as1.ftcdn.net/v2/jpg/01/82/71/88/1000_F_182718856_jDTgUmocRsHOFGTXNV6fL4cltRHuSF52.jpg",
                      "Crystal"),
                  Cardd(
                      "https://thumbs.dreamstime.com/z/compass-isolated-12016068.jpg?w=768",
                      "Compass"),
                  Cardd(
                      "https://i2.pickpik.com/photos/959/670/400/glass-cup-drink-wine-glass-preview.jpg",
                      "Glass"),
                  Cardd(
                      "https://as1.ftcdn.net/v2/jpg/01/82/71/88/1000_F_182718856_jDTgUmocRsHOFGTXNV6fL4cltRHuSF52.jpg",
                      "Crystal"),
                  Cardd(
                      "https://as1.ftcdn.net/v2/jpg/01/82/71/88/1000_F_182718856_jDTgUmocRsHOFGTXNV6fL4cltRHuSF52.jpg",
                      "Crystal"),
                  Cardd(
                      "https://thumbs.dreamstime.com/z/compass-isolated-12016068.jpg?w=768",
                      "Compass"),
                  Cardd(
                      "https://i2.pickpik.com/photos/959/670/400/glass-cup-drink-wine-glass-preview.jpg",
                      "Glass"),
                  Cardd(
                      "https://as1.ftcdn.net/v2/jpg/01/82/71/88/1000_F_182718856_jDTgUmocRsHOFGTXNV6fL4cltRHuSF52.jpg",
                      "Crystal"),
                  Cardd(
                      "https://thumbs.dreamstime.com/z/compass-isolated-12016068.jpg?w=768",
                      "Compass"),
                  Cardd(
                      "https://media.gettyimages.com/id/185416013/photo/single-red-pin-tack-map-pin.jpg?s=2048x2048&w=gi&k=20&c=apkMD1NUDd_OHZBry6v8C-euPhfWafY7TVqrQyKF8ks=",
                      "Pin"),
                  Cardd(
                      "https://images.pexels.com/photos/226587/pexels-photo-226587.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                      "Ball"),
                  Cardd(
                      "https://images.pexels.com/photos/701809/pexels-photo-701809.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                      "Camera"),
                  Cardd(
                      "https://thumbs.dreamstime.com/z/compass-isolated-12016068.jpg?w=768",
                      "Compass"),
                  Cardd(
                      "https://media.gettyimages.com/id/185416013/photo/single-red-pin-tack-map-pin.jpg?s=2048x2048&w=gi&k=20&c=apkMD1NUDd_OHZBry6v8C-euPhfWafY7TVqrQyKF8ks=",
                      "Pin"),
                  Cardd(
                      'https://e0.pxfuel.com/wallpapers/839/689/desktop-wallpaper-object-object-hidden-object-and-single-object-graphy-awesome-background.jpg',
                      "Dice"),
                  Cardd(
                      "https://images.pexels.com/photos/226587/pexels-photo-226587.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                      "Ball"),
                  Cardd(
                      "https://images.pexels.com/photos/701809/pexels-photo-701809.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                      "Camera"),
                  Cardd(
                      'https://images.unsplash.com/photo-1415604934674-561df9abf539?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1980&q=80',
                      "Alarm Clock"),
                  Cardd(
                      'https://c4.wallpaperflare.com/wallpaper/255/197/222/nuke-wallpaper-preview.jpg',
                      "Bomb"),
                  Cardd(
                      "https://i2.pickpik.com/photos/959/670/400/glass-cup-drink-wine-glass-preview.jpg",
                      "Glass"),
                  Cardd(
                      "https://as1.ftcdn.net/v2/jpg/01/82/71/88/1000_F_182718856_jDTgUmocRsHOFGTXNV6fL4cltRHuSF52.jpg",
                      "Crystal"),
                  Cardd(
                      "https://thumbs.dreamstime.com/z/compass-isolated-12016068.jpg?w=768",
                      "Compass"),
                  Cardd(
                      "https://media.gettyimages.com/id/185416013/photo/single-red-pin-tack-map-pin.jpg?s=2048x2048&w=gi&k=20&c=apkMD1NUDd_OHZBry6v8C-euPhfWafY7TVqrQyKF8ks=",
                      "Pin"),
                  Cardd(
                      'https://e0.pxfuel.com/wallpapers/839/689/desktop-wallpaper-object-object-hidden-object-and-single-object-graphy-awesome-background.jpg',
                      "Dice"),
                  Cardd(
                      'https://c4.wallpaperflare.com/wallpaper/255/197/222/nuke-wallpaper-preview.jpg',
                      "Bomb"),
                  Cardd(
                      "https://i2.pickpik.com/photos/959/670/400/glass-cup-drink-wine-glass-preview.jpg",
                      "Glass"),
                  Cardd(
                      "https://images.pexels.com/photos/226587/pexels-photo-226587.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                      "Ball"),
                  Cardd(
                      "https://images.pexels.com/photos/701809/pexels-photo-701809.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                      "Camera"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



Widget _list() => Row(
      children: [
        Cardd(
            'https://e0.pxfuel.com/wallpapers/839/689/desktop-wallpaper-object-object-hidden-object-and-single-object-graphy-awesome-background.jpg',
            "Dice"),
        Cardd(
            'https://c4.wallpaperflare.com/wallpaper/255/197/222/nuke-wallpaper-preview.jpg',
            "Bomb"),
        Cardd(
            "https://i2.pickpik.com/photos/959/670/400/glass-cup-drink-wine-glass-preview.jpg",
            "Glass"),
        Cardd(
            "https://as1.ftcdn.net/v2/jpg/01/82/71/88/1000_F_182718856_jDTgUmocRsHOFGTXNV6fL4cltRHuSF52.jpg",
            "Crystal"),
        Cardd(
            "https://thumbs.dreamstime.com/z/compass-isolated-12016068.jpg?w=768",
            "Compass"),
        Cardd(
            "https://i2.pickpik.com/photos/959/670/400/glass-cup-drink-wine-glass-preview.jpg",
            "Glass"),
        Cardd(
            "https://as1.ftcdn.net/v2/jpg/01/82/71/88/1000_F_182718856_jDTgUmocRsHOFGTXNV6fL4cltRHuSF52.jpg",
            "Crystal"),
        Cardd(
            "https://as1.ftcdn.net/v2/jpg/01/82/71/88/1000_F_182718856_jDTgUmocRsHOFGTXNV6fL4cltRHuSF52.jpg",
            "Crystal"),
        Cardd(
            "https://thumbs.dreamstime.com/z/compass-isolated-12016068.jpg?w=768",
            "Compass"),
        Cardd(
            "https://i2.pickpik.com/photos/959/670/400/glass-cup-drink-wine-glass-preview.jpg",
            "Glass"),
        Cardd(
            "https://as1.ftcdn.net/v2/jpg/01/82/71/88/1000_F_182718856_jDTgUmocRsHOFGTXNV6fL4cltRHuSF52.jpg",
            "Crystal"),
        Cardd(
            "https://thumbs.dreamstime.com/z/compass-isolated-12016068.jpg?w=768",
            "Compass"),
        Cardd(
            "https://media.gettyimages.com/id/185416013/photo/single-red-pin-tack-map-pin.jpg?s=2048x2048&w=gi&k=20&c=apkMD1NUDd_OHZBry6v8C-euPhfWafY7TVqrQyKF8ks=",
            "Pin"),
        Cardd(
            "https://images.pexels.com/photos/226587/pexels-photo-226587.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
            "Ball"),
        Cardd(
            "https://images.pexels.com/photos/701809/pexels-photo-701809.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
            "Camera"),
        Cardd(
            "https://thumbs.dreamstime.com/z/compass-isolated-12016068.jpg?w=768",
            "Compass"),
        Cardd(
            "https://media.gettyimages.com/id/185416013/photo/single-red-pin-tack-map-pin.jpg?s=2048x2048&w=gi&k=20&c=apkMD1NUDd_OHZBry6v8C-euPhfWafY7TVqrQyKF8ks=",
            "Pin"),
        Cardd(
            'https://e0.pxfuel.com/wallpapers/839/689/desktop-wallpaper-object-object-hidden-object-and-single-object-graphy-awesome-background.jpg',
            "Dice"),
        Cardd(
            "https://images.pexels.com/photos/226587/pexels-photo-226587.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
            "Ball"),
        Cardd(
            "https://images.pexels.com/photos/701809/pexels-photo-701809.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
            "Camera"),
        Cardd(
            'https://images.unsplash.com/photo-1415604934674-561df9abf539?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1980&q=80',
            "Alarm Clock"),
        Cardd(
            'https://c4.wallpaperflare.com/wallpaper/255/197/222/nuke-wallpaper-preview.jpg',
            "Bomb"),
        Cardd(
            "https://i2.pickpik.com/photos/959/670/400/glass-cup-drink-wine-glass-preview.jpg",
            "Glass"),
        Cardd(
            "https://as1.ftcdn.net/v2/jpg/01/82/71/88/1000_F_182718856_jDTgUmocRsHOFGTXNV6fL4cltRHuSF52.jpg",
            "Crystal"),
        Cardd(
            "https://thumbs.dreamstime.com/z/compass-isolated-12016068.jpg?w=768",
            "Compass"),
        Cardd(
            "https://media.gettyimages.com/id/185416013/photo/single-red-pin-tack-map-pin.jpg?s=2048x2048&w=gi&k=20&c=apkMD1NUDd_OHZBry6v8C-euPhfWafY7TVqrQyKF8ks=",
            "Pin"),
        Cardd(
            'https://e0.pxfuel.com/wallpapers/839/689/desktop-wallpaper-object-object-hidden-object-and-single-object-graphy-awesome-background.jpg',
            "Dice"),
        Cardd(
            'https://c4.wallpaperflare.com/wallpaper/255/197/222/nuke-wallpaper-preview.jpg',
            "Bomb"),
        Cardd(
            "https://i2.pickpik.com/photos/959/670/400/glass-cup-drink-wine-glass-preview.jpg",
            "Glass"),
        Cardd(
            "https://images.pexels.com/photos/226587/pexels-photo-226587.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
            "Ball"),
        Cardd(
            "https://images.pexels.com/photos/701809/pexels-photo-701809.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
            "Camera"),
      ],
    );

Widget Label(String name) => Container(
      height: 30,
      color: Colors.teal[600],
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$name",
              style: TextStyle(
                fontFamily: 'IndieFlower',
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.more,
              ),
              label: Text(
                "See All",
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal[900],
              ),
            ),
          ],
        ),
      ),
    );
