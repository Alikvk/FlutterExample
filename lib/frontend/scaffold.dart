import 'package:flutter/material.dart';

class MyScaffoldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent.shade100,
      appBar: AppBar(
        title: const Text('AppBar Demo'),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'firstpage',
              onPressed: () => Navigator.pushNamed(context, '/firstpage')),
          IconButton(
              icon: const Icon(Icons.navigate_before),
              tooltip: 'statelessstatefullwidget',
              onPressed: () =>
                  Navigator.pushNamed(context, '/statelessstatefullwidget')),
          IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'hello',
              onPressed: () => Navigator.pushNamed(context, '/hello')),
        ],
      ),
      body: GridView.count(
        primary: false,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/firstpage'),
            child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://storage.googleapis.com/material-design/publish/material_v_11/assets/0Bx4BSt6jniD7T0hfM01sSmRyTG8/layout_structure_regions_mobile.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.all(8),
                child: Transform(
                  alignment: Alignment.bottomCenter,
                  transform: Matrix4.skew(0, 0)..rotateZ(0.0),
                  child: Container(
                    width: double.infinity,
                    color: Color(
                      0x55FFFFFF,
                    ), // ilk FF kısmı Transparant değer FF ile 00 arasındaki değerleri alıyor
                    child: Text(
                      'Tek tıklama \n First Page git',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                )),
          ),
          GestureDetector(
            onDoubleTap: () =>
                Navigator.pushNamed(context, '/statelessstatefullwidget'),
            child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://storage.googleapis.com/material-design/publish/material_v_11/assets/0Bx4BSt6jniD7T0hfM01sSmRyTG8/layout_structure_regions_mobile.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.all(5),
                child: Transform(
                  alignment: Alignment.bottomCenter,
                  transform: Matrix4.skew(0, 0)..rotateZ(0.0),
                  child: Container(
                    width: double.infinity,
                    color: Color(
                      0x55FFFFFF,
                    ), // ilk FF kısmı Transparant değer FF ile 00 arasındaki değerleri alıyor
                    child: Text(
                      'Çift Tıklama \n Stateful-Stateless Sayfasına Git',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                )),
          ),
          GestureDetector(
            onLongPress: () => Navigator.pushNamed(context, '/hello'),
            child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://storage.googleapis.com/material-design/publish/material_v_11/assets/0Bx4BSt6jniD7T0hfM01sSmRyTG8/layout_structure_regions_mobile.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.all(5),
                child: Transform(
                  alignment: Alignment.bottomCenter,
                  transform: Matrix4.skew(0, 0)..rotateZ(0.0),
                  child: Container(
                    width: double.infinity,
                    color: Color(
                      0x55FFFFFF,
                    ), // ilk FF kısmı Transparant değer FF ile 00 arasındaki değerleri alıyor
                    child: Text(
                      'Uzun Basma \n Hello Sayfasına Git',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                )),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(8),
            child: const Text('Who scream'),
            color: Colors.teal[400],
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(8),
            child: const Text('Revolution is coming...'),
            color: Colors.teal[500],
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(8),
            child: const Text('Revolution, they...'),
            color: Colors.teal[600],
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(8),
            child: const Text("He'd have you all unravel at the"),
            color: Colors.teal[100],
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(8),
            child: const Text('Heed not the rabble'),
            color: Colors.teal[200],
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(8),
            child: const Text('Sound of screams but the'),
            color: Colors.teal[300],
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(8),
            child: const Text('Who scream'),
            color: Colors.teal[400],
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(8),
            child: const Text('Revolution is coming...'),
            color: Colors.teal[500],
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(8),
            child: const Text('Revolution, they...'),
            color: Colors.teal[600],
          ),
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(
          // Alt barı oluşturduğumuz kısım
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(Icons.archive),
              title: new Text('Arşiv'),
            ),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.announcement),
                title: new Text('Bilgilendirme'),
                activeIcon: new Icon(
                  Icons.archive,
                  color: Colors.red,
                )),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.assessment),
              title: new Text('Değerlendirme'),
            ),
          ],
          onTap: (int i) {
            switch (i) {
              case 0:
                debugPrint('Arşiv Çalıştı');
                break;
              case 1:
                debugPrint('Bilgilendirme Çalıştı');
                break;
              case 2:
                debugPrint('Değerlendirme Çalıştı');
                break;
              default:
            }
          } // alt bardaki oluşturduğumuz buttonların kaçıncı indexte olduğunu gösteriyor
          ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
