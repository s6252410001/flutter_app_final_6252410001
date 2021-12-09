import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class laUI extends StatefulWidget {
  const laUI({ Key? key }) : super(key: key);

  @override
  _laUIState createState() => _laUIState();
}

class _laUIState extends State<laUI> {

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
                'Faculty of Law',
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
                  'assets/images/la.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              Text(
                'สาขาวิชานิติศาสตร์',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              
              SizedBox(
                height: 100.0,
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