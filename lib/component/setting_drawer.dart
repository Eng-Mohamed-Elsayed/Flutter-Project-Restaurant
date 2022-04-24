import 'package:flutter/material.dart';

class SettingDrawer extends StatelessWidget {
  const SettingDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ListTile(
          leading: Icon(
            Icons.location_city,
            color: Color.fromARGB(255, 13, 105, 181),
            size: 30,
          ),
          title: Text('Amman,Jordan'),
          // tileColor: Color.fromARGB(255, 13, 71, 161),
        ),
        ListTile(
          leading: Icon(
            Icons.phone,
            color: Color.fromARGB(255, 13, 105, 181),
            size: 30,
          ),
          title: Text('0777123456'),
        ),
        ListTile(
          leading: Icon(
            Icons.facebook,
            color: Color.fromARGB(255, 13, 105, 181),
            size: 30,
          ),
          title: Text('Rawan`s Restarant'),
        ),
        ListTile(
          leading: Icon(
            Icons.email,
            color: Color.fromARGB(255, 13, 105, 181),
            size: 30,
          ),
          title: Text('rawan.restarant@gmail.com'),
        ),
      ],
    );
  }
}
