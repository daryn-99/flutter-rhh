import 'package:flutter/material.dart';

import 'package:app_rhh/config/palette.dart';
import 'package:app_rhh/pages/home_page.dart';
import 'package:app_rhh/pages/nav_screen.dart';
import 'package:app_rhh/pages/registro_page.dart';
import 'package:app_rhh/pages/loginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Reco UI",
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'login': (BuildContext context) => LoginPage(),
          'registro': (BuildContext context) => RegistroPage(),
          'home': (BuildContext context) => HomePage(),
          'nav_screen': (BuildContext context) => NavScreen(),
        },
        theme: ThemeData(
          accentColor: Colors.white70,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Palette.scaffold,
        ));
  }
}

/*class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  SharedPreferences sharedPreferences;

  @override
  void initState() {
    super.initState();
    checkLoginStatus();
  }

  checkLoginStatus() async {
    sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getString("token") == null) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (BuildContext context) => RegistroPage()),
          (Route<dynamic> route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reco UI", style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              sharedPreferences.clear();
              sharedPreferences.commit();
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                      builder: (BuildContext context) => RegistroPage()),
                  (Route<dynamic> route) => false);
            },
            child: Text("Log Out", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: Center(child: Text("Main Page")),
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Ejercicios'),
              accountEmail: new Text('codigoalphacol@gmail.com'),
            ),
            new ListTile(
                title: new Text("List Products"),
                trailing: new Icon(Icons.help),
                onTap:
                    () {} /*=> Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => ListProducts(),
              )),*/
                ),
            new ListTile(
                title: new Text("Add Products"),
                trailing: new Icon(Icons.help),
                onTap:
                    () {} /*=> Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => ListProducts(),
              )),*/
                ),
            new Divider(),
            new ListTile(
              title: new Text("Register user"),
              trailing: new Icon(Icons.fitness_center),
              onTap: () => {},
            ),
          ],
        ),
      ),
    );
  }
}*/
