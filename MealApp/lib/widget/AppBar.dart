import 'package:flutter/material.dart';
class Bar extends StatelessWidget implements PreferredSizeWidget{
  final String title;

  const Bar({super.key, required this.title});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4754af),
        title: Text(title, style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
          leading: IconButton(onPressed: (){
            Scaffold.of(context).openDrawer();

            }, icon: const Icon(Icons.menu, size: 30, ))
      ),
    );
  }
}
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
      const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            child: Text(
              "MEAL APP",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            iconColor: Colors.lightBlue,
            title: const Text('Home Screen'),
            leading: const Icon(Icons.home),
            onTap: () {
              Navigator.pushNamed(context, "login");
            },
          ),
          ListTile(
            iconColor: Colors.lightBlue,
            title: const Text('Delivery'),
            leading: const Icon(Icons.delivery_dining),
            onTap: () {

            },
          ),
          const ListTile(
            iconColor: Colors.lightBlue,
            title: Text('Profile'),
            leading: CircleAvatar(
              // Add your profile image here
              // backgroundImage: AssetImage('path_to_image'),
            ),
          ),
        ],
      ),
    );
  }
}
