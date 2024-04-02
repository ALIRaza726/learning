import 'package:abc/screen/inc_counter.dart';
import 'package:flutter/material.dart';

class AppBarSc extends StatefulWidget {
  const AppBarSc({super.key});

  @override
  State<AppBarSc> createState() => _AppBarScState();
}

class _AppBarScState extends State<AppBarSc> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          //centerTitle: true,
          elevation: 10,
          shadowColor: Color.fromARGB(255, 87, 206, 208),
          backgroundColor: Color.fromARGB(245, 122, 192, 245),
          leading: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => counterInc()));
            },
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/profile.png')),
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ),
          title: const Column(
            children: [
              Row(
                children: [
                  Text(
                    'User Name: ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 1, 1, 17),
                      fontSize: 10,
                    ),
                  ),
                  Text(
                    'Ali Raza',
                    style: TextStyle(
                        color: Color.fromARGB(255, 1, 1, 17),
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'E-mail: ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 1, 1, 17),
                      fontSize: 10,
                    ),
                  ),
                  Text(
                    'Ali@gmail.com',
                    style: TextStyle(
                        color: Color.fromARGB(255, 1, 1, 17),
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Container(
                width: 130,
                height: 25,
                child: TextFormField(
                  cursorColor: Colors.white,
                  cursorHeight: 15,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      iconColor: Colors.white,
                      icon: Icon(Icons.search),
                      labelText: 'Search',
                      labelStyle: TextStyle(fontSize: 10, color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 247, 246, 246))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
