import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const CustomDrawerHeader(),               
                ExpansionTile(
                  title: const Text('Presentacion'),
                  leading: Icon(Icons.home),
                  childrenPadding: const EdgeInsets.all(4),
                  backgroundColor: Colors.transparent,
                  collapsedBackgroundColor: Colors.transparent,
                  children: [
                    ListTile(
                        leading: const Icon(Icons.document_scanner),
                        title: const Text('¿Quiénes somos?'),
                        onTap: () {
            
                        }),
                    ListTile(
                        leading: const Icon(Icons.document_scanner),
                        title: const Text('¿Qué vas a aprender?'),
                        onTap: () {}),
                  ],
                ),
                ExpansionTile(
                  title: const Text('Presentacion'),
                  leading: Icon(Icons.home),
                  childrenPadding: const EdgeInsets.all(4),
                  backgroundColor: Colors.transparent,
                  collapsedBackgroundColor: Colors.transparent,
                  children: [
                    ListTile(
                        leading: const Icon(Icons.document_scanner),
                        title: const Text('¿Quiénes somos?'),
                        onTap: () {
                          
                        }),
                    ListTile(
                        leading: const Icon(Icons.document_scanner),
                        title: const Text('¿Qué vas a aprender?'),
                        onTap: () {}),
                  ],
                ),
                ExpansionTile(
                  title: const Text('Presentacion'),
                  leading: Icon(Icons.home),
                  childrenPadding: const EdgeInsets.all(4),
                  backgroundColor: Colors.transparent,
                  collapsedBackgroundColor: Colors.transparent,
                  children: [
                    ListTile(
                        leading: const Icon(Icons.document_scanner),
                        title: const Text('¿Quiénes somos?'),
                        onTap: () {
            
                        }),
                    ListTile(
                        leading: const Icon(Icons.document_scanner),
                        title: const Text('¿Qué vas a aprender?'),
                        onTap: () {}),
                  ],
                ),
               
              ],
            ),
          ),        
          Column(
            children: [
              ListTile(
                      leading: const Icon(Icons.outbond_rounded),
                      title: const Text('Ajustes'),
                      onTap: () {}),
              ListTile(
                      leading: const Icon(Icons.outbond_rounded),
                      title: const Text('Cerrar seccion'),
                      onTap: () {}),
            ],
          ),
                  ],
      ),
    );
  }
}

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 69, 120, 162),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), // Borde redondeado de 20
              image: const DecorationImage(
                image: AssetImage('assets/image/logo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Learning Signs',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}