import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PrincipalPageAmerica extends StatefulWidget {
  const PrincipalPageAmerica({Key? key}) : super(key: key);

  @override
  _PrincipalPageAmericaState createState() => _PrincipalPageAmericaState();
}

class _PrincipalPageAmericaState extends State<PrincipalPageAmerica> {
  @override
  Widget build(BuildContext context) {
    final List<String> pruebas = <String>[
      'Prueba 1',
      'Prueba 2',
      'Prueba 3',
      'Prueba 4',
    ];
    final color = Color(0xff022d4f);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: Drawer(
        child: enddrawerlist(size: size),
      ),
      appBar: AppBar(
        title: Image.asset(
          'assets/image/Logo.JPG',
          height: 50,
        ),
        backgroundColor: color,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: color),
                  height: 40,
                  width: 100,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: color),
                  height: 40,
                  width: 50,
                  child: Center(child: Text('2')),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50, top: 15),
              child: Container(
                height: size.height * 0.7,
                width: size.width,
                child: ListView.builder(
                  itemCount: pruebas.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      color: Colors.white24,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 84),
                          child: Text(pruebas[index]),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: color,
        elevation: 30,
        child: Icon(Icons.add_box_outlined),
        onPressed: () {},
      ),
    );
  }
}

class enddrawerlist extends StatelessWidget {
  const enddrawerlist({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView(
      // Important: Remove any padding from the ListView.
      //padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: SvgPicture.asset(
            "assets/icon/drawer.svg",
            height: size.height * 0.30,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
        ),
        ListTile(
          leading: SvgPicture.asset(
            "assets/icon/mof.svg",
            height: 25,
          ),
          trailing: Icon(Icons.download_rounded),
          title: Text('MOF'),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          leading: SvgPicture.asset(
            "assets/icon/ley.svg",
            height: 25,
          ),
          trailing: Icon(Icons.download_rounded),
          title: Text('RIT'),
          onTap: () {
            // _launchFacebook();
          },
        ),
        Divider(),
        ListTile(
          leading: SvgPicture.asset(
            "assets/icon/pasos.svg",
            height: 25,
          ),
          trailing: Icon(Icons.download_rounded),
          title: Text('Procesos'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            //Navigator.pop(context);
          },
        ),
        Divider(),
        ListTile(
          leading: SvgPicture.asset(
            "assets/icon/capacitacion.svg",
            height: 25,
          ),
          trailing: Icon(Icons.queue_play_next_rounded),
          title: Text('Capacitaciones'),
          onTap: () {
            //_launchCapa();
            // Update the state of the app
            // ...
            // Then close the drawer
            //Navigator.pop(context);
          },
        ),
        Divider(),
        ListTile(
          leading: SvgPicture.asset(
            "assets/icon/capacitacion.svg",
            height: 25,
          ),
          trailing: Icon(Icons.queue_play_next_rounded),
          title: Text('Cumpleaños'),
          onTap: () {
            //_launchCapa();
            // Update the state of the app
            // ...
            // Then close the drawer
            //Navigator.pop(context);
          },
        ),

        SizedBox(
          height: size.height * 0.15,
        ),
        Divider(),
        ListTile(
          leading: SvgPicture.asset(
            "assets/icon/admin.svg",
            height: 25,
          ),
          trailing: Icon(Icons.admin_panel_settings),
          title: Text('Administrador'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            //Navigator.pop(context);
          },
        ),

        Divider(),
        //SizedBox(
        //height: size.height * 0.1,
        //),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text('Cerrar Sesion'),
          onTap: () {
            // Update the state of the app
            // ...

            //Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
