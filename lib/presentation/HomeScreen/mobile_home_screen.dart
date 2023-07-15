import 'package:catholicsapp/constants/constants.dart';
import 'package:flutter/material.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFCAF0FF),
        title: const Text('Catholics'),
      ),
      drawer: const Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
            ),
            ListTile(
              title: Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  'Catholics',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
                ),
              ),
              leading:
                  Image(image: AssetImage('assets/images/catholicsIcon.png')),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            height: size.width * 0.25,
            width: double.infinity,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Date : ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('Mass Timings :',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
