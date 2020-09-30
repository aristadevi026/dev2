import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blueAccent,
          appBar: AppBar(
            leading: IconButton(
              icon: Icon (Icons.home, color: Colors.black, size: 40.0,),
            ),
            centerTitle: true,
            title: Text(
              'Profil',
              style: TextStyle(
                  color: Colors.black, fontSize: 30, fontFamily: "serif", fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.red,
          ),
          body: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(2),
              child: ClipOval(
                child: Image.asset(
                  'img/img2.png',
                  height: 140,
                  width: 140,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text('Made Diah Arista Devi',
                style: TextStyle(fontSize: 20, color: Colors.black87, fontWeight: FontWeight.bold)),
            Text('https://www.aristadevi221.com',
                style: TextStyle(fontSize: 15, color: Colors.black87, fontWeight: FontWeight.bold)),
            Expanded(
                child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: .95,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    padding: const EdgeInsets.only(top: 50.0),
                    children: <Widget>[
                      MyIcon(title: "Klungkung", icon: Icons.location_on),
                      MyIcon(title: "Indonesia", icon: Icons.public),
                      MyIcon(title: "All Genre", icon: Icons.music_note),
                      MyIcon(title: "Undiksha", icon: Icons.school)
                    ]))
          ]))));
}
class MyIcon extends StatelessWidget {
  const MyIcon({this.title, this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
            padding: EdgeInsets.all(40),
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: <Widget>[
                Spacer(),
                Icon(
                  icon, size: 50,
                ),
                Spacer(),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            )));
  }
}

