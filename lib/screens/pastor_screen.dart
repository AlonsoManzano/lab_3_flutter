import 'package:flutter/material.dart';

class PastorScreen extends StatelessWidget {
  const PastorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3090D3),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () {
            Navigator.pop(context,
            '/home_screen.dart');
          },
        ),
        title: Text('Pastor Aleman', style: TextStyle(
          color: Colors.white,
        )),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffAED6F1),
              Colors.white,
            ],
          ),
        ),
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/pastor.png',
              fit: BoxFit.cover,
            ),
            SizedBox(height: 30),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut at dapibus orci. Quisque nec mauris dolor. Sed est nibh, congue at augue sit amet, cursus volutpat elit. Nullam ut tortor feugiat, sodales neque non, tincidunt nibh. Nullam facilisis sapien sit amet luctus elementum. Class aptent taciti sociosqu ad litora torquent.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}