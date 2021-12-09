import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class artSciUI extends StatefulWidget {
  const artSciUI({Key? key}) : super(key: key);

  @override
  _artSciUIState createState() => _artSciUIState();
}

class _artSciUIState extends State<artSciUI> {
  String tel = '028064500';
  String web = 'http://www.sau.ac.th';

  //methodเปิดเว็บ
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  //methodโทร
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Faculty of Arts and Sciences',
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
                height: MediaQuery.of(context).size.height - 600,
                child: Image.asset(
                  'assets/images/artsci.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'สาขาวิชาดิจิทัลมีเดีย',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'สาขาวิชาเทคโนโลยีดิจิทัลและนวัตกรรม',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'สาขาวิชาภาษาอังกฤษธุรกิจ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'สาขาวิชารัฐประศาสนศาสตร์',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              
              SizedBox(
                height: 80.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _makePhoneCall('tel:' + tel);
                      });
                    },
                    child: Container(
                      width: 30.0,
                      child: Image.asset(
                        'assets/images/icon_phone.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _launchInBrowser(web);
                      });
                    },
                    child: Container(
                      width: 30.0,
                      child: Image.asset(
                        'assets/images/icon_web.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
