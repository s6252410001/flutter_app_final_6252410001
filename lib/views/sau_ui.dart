import 'package:flutter/material.dart';

class sauUI extends StatefulWidget {
  const sauUI({Key? key}) : super(key: key);

  @override
  _sauUIState createState() => _sauUIState();
}

class _sauUIState extends State<sauUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40.0,
              ),
              Text(
                'Welcome',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'To',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Southeast Asia University',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width -30,
                child: Image.asset(
                  'assets/images/saubanner1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'ทางเลือกใหม่ของโลกดิจิทัล',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
               SizedBox(
                height: 10.0,
              ),
              Text(
                'เริ่มต้นที่นี่',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
               SizedBox(
                height: 30.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/saubanner2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
