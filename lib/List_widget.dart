import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
//  const ListWidget({Key key}) : super(key: key);

  List<dynamic> data = [
    {'image': 'assets/2.png', 'name': 'Todun Taak', 'Artist': 'D Evil'},
    {'image': 'assets/3.jpg', 'name': 'filhaal', 'Artist': 'B Praak'},
    {
      'image': 'assets/1.jpg',
      'name': 'See You Again',
      'Artist': 'Wiz Khainalifa'
    },
    {'image': 'assets/4.png', 'name': 'Paani Paani', 'Artist': 'Badshah'},
    {'image': 'assets/2.png', 'name': 'Todun Taak', 'Artist': 'D Evil'},
    {'image': 'assets/3.jpg', 'name': 'filhaal', 'Artist': 'B Praak'},
    {
      'image': 'assets/1.jpg',
      'name': 'See You Again',
      'Artist': 'Wiz Khainalifa'
    },
    {'image': 'assets/4.png', 'name': 'Paani Paani', 'Artist': 'Badshah'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(data[index]['image']),
            ),
            title: Text(
              data[index]['name'],
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff253f62)),
            ),
            subtitle: Text(
              'By  ${data[index]['Artist']}',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffd3d3d3)),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.play_circle,
                size: 40,
              ),
              onPressed: () {},
            ),
          ),
        );
      },
    );
  }
}
