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
            tooltip: 'Show Snackbar',
            onPressed: () =>
                print('Show Snackbar'), // butona tıklandığında bu cümleyi yaz
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Next page',
            onPressed: () => print('Next Page'),
          ),
        ],
      ),
      body: const Center(child: Text('Dendassta')),
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
