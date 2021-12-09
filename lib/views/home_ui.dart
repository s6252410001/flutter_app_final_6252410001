import 'package:flutter/material.dart';
import 'package:flutter_app_final_6252410001/views/artsci_ui.dart';
import 'package:flutter_app_final_6252410001/views/bs_ui.dart';
import 'package:flutter_app_final_6252410001/views/en_ui.dart';
import 'package:flutter_app_final_6252410001/views/la_ui.dart';
import 'package:flutter_app_final_6252410001/views/sau_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class homeUI extends StatefulWidget {
  const homeUI({Key? key}) : super(key: key);

  @override
  _homeUIState createState() => _homeUIState();
}

class _homeUIState extends State<homeUI> {


   List page = [
    sauUI(),
    enUI(),
    artSciUI(),
    bsUI(),
    laUI(),
  ];

  int selectIndex = 0 ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar:  AppBar(
                backgroundColor: Colors.black87,
                title: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'SA',
                        style: TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Itim',
                          color: Colors.blue,
                        ),
                      ),
                      TextSpan(
                        text: 'U',
                        style: TextStyle(
                          fontFamily: 'Itim',
                          fontSize: 45.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
                centerTitle: true,
              ),
      bottomNavigationBar: BottomNavigationBar(

        onTap: (value) {
          setState(() {
            selectIndex = value;
          });
        },

        type: BottomNavigationBarType.fixed,

        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey[500],
        selectedItemColor: Colors.yellow,

        


        currentIndex: selectIndex,

        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.home,
            ),
            label: ' SAU',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.cog
            ),
            label: 'EN',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.atom
            ),
            label: 'ARTSCI',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.idCard
            ),
            label: ' BS',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.balanceScale
            ),
            label: '  LA',
          ),
        ],
      ),   
      body: page.elementAt(selectIndex),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Column(
              children: [
                Container(
                  color: Colors.black87,
                  height: 230.0,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 55.0,
                              top: 120.0,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'SA',
                                    style: TextStyle(
                                      fontFamily: 'Itim',
                                      fontSize: 60.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'U',
                                    style: TextStyle(
                                      fontFamily: 'Itim',
                                      fontSize: 60.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20.0,
                            ),
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: 'Southeast Asia University',
                                  style: TextStyle(
                                    fontFamily: 'Itim',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => homeUI(),
                        ),
                      );
                  },
                  title: Text(
                    'SAU',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black87,
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => homeUI(),
                        ),
                      );
                  },
                  title: Text(
                    'วิศวกรรมศาสตร์',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black87,
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => homeUI(),
                        ),
                      );
                  },
                  title: Text(
                    'ศิลปศาสตร์และวิทยาศาสตร์',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black87,
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => homeUI(),
                        ),
                      );
                  },
                  title: Text(
                    'บริหารธุรกิจ',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black87,
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => homeUI(),
                        ),
                      );
                  },
                  title: Text(
                    'นิติศาสตร์',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black87,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
