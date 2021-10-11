import 'package:flutter/material.dart';
import 'package:musicui/List_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            color: Color(0xff8fd3e2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              //  crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset.fromDirection(1.9, 3.0),
                            spreadRadius: 10,
                            blurRadius: 30,
                            color: Color(0xff59afc0))
                      ],
                      image: DecorationImage(image: AssetImage('assets/1.jpg')),
                      border: Border.all(color: Colors.white, width: 10),
                      borderRadius: BorderRadius.circular(100)),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'See You Again',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      'By Wiz Khanalifa',
                      style: TextStyle(color: Colors.grey[200], fontSize: 14),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        RaisedButton(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Text('Play'),
                            onPressed: () {}),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              size: 30,
                              color: Color(0xffa4d9e3),
                            ))
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 300,
            child: Container(
              alignment: Alignment.topLeft,
              height: 500,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Top Charts',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Expanded(child: ListWidget()),
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
            ),
          )
        ],
      ),
    );
  }
}
