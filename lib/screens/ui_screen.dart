import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview_task/moduls/moduls.dart';
import '../components/components.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<DoctorsData> doctors = [
    DoctorsData('Dr. ali', 'Mri , ddv ,ssd, aad', 4.2, 'images/man ava.png'),
    DoctorsData('Dr. mona', 'Mri ,  ,ssd, aad', 3.2, 'images/woman ava.png'),
    DoctorsData(
        'Dr. mohamed', 'Mri , ddv ,Xray, aad', 4.8, 'images/man ava.png'),
    DoctorsData('Dr. lyla', ' ddv ,ssd, aad', 3.8, 'images/woman ava.png'),
    DoctorsData('Dr. ali', 'Mri , ddv ,ssd, aad', 2.2, 'images/man ava.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  helpingCardBulider(
                      name: 'Doctor',
                      icon: Icons.cabin,
                      bio: 'search doctor around you'),
                  SizedBox(
                    width: 25,
                  ),
                  helpingCardBulider(
                      name: 'Digonostic',
                      icon: Icons.eighteen_mp,
                      bio: 'book test at doorstep'),
                  SizedBox(
                    width: 25,
                  ),
                  helpingCardBulider(
                      name: 'Book Appointment',
                      icon: Icons.assignment_turned_in,
                      bio: 'Book appointment at Cilnic'),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: 150,
                child: ListView.separated(
                  itemBuilder: (context, index) => picview(),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20,
                  ),
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Doctors nearby you',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  width: 180,
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'see all',
                        style: TextStyle(color: Colors.cyan),
                      )),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 150,
              decoration: BoxDecoration(),
              child: ListView.separated(
                itemBuilder: (context, index) => profilrBulider(doctors[index]),
                separatorBuilder: (context, index) => SizedBox(
                  width: 20,
                ),
                itemCount: doctors.length,
                scrollDirection: Axis.horizontal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
