import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task1/Screens/drawerscreen/account.dart';
import 'package:task1/Screens/drawerscreen/payments.dart';
import 'package:task1/Screens/drawerscreen/visitors.dart';
import 'package:task1/Screens/login_signup/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  String _username = "";

  @override
  void initState() {
    super.initState();
    getUsername();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
        elevation: 10,
        backgroundColor: Color.fromARGB(194, 8, 212, 248),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
              icon: Icon(Icons.logout))

          // PopupMenuButton(
          //     itemBuilder: (context) => [roadcast')),
          //           const PopupMenuItem(child: Text('Linked devices')),
          //           const PopupMenuItem(child: Text('Exit')),
          //         ]),
          // IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
      ),
      body: Center(
        child: Text("Welcome $_username "),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[1800],
        onTap: _onItemTapped,
      ),
      drawer: Drawer(
        child: ListView(
          
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 23, 180, 228),
              ),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://media-exp2.licdn.com/dms/image/C4D03AQE8UwsUzXigdA/profile-displayphoto-shrink_800_800/0/1656521043387?e=1661990400&v=beta&t=FxsvYu-_xjgLMd22AqtwMlTpcPYH7fEmL2Jl79dZe6c",
                    scale:0.015),
                    
                // child: Icon(
                //   Icons.account_circle_rounded,
                //   size: 140,
                // ),
                backgroundColor: Color.fromARGB(234, 123, 34, 56),
                
              ),
              
            ),
            ListTile(
              title: Center(child: Text('Account')),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AccountScreen(),
                    ));
              },
            ),
            Divider(
              height: 8,
              color: Colors.black,
            ),
            ListTile(
              title: Center(child: Text('Payments')),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentScreen(),
                    ));
              },
            ),
            
            Divider(
              height: 8,
              color: Colors.black,
            ),
            ListTile(
              title: Center(child: Text('Visitors')),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => visitors(),
                    ));
              },
            ),
            Divider(
              height: 8,
              color: Colors.black,
            ),
            ListTile(
              title: Center(child: Text('Credits')),
            ),
            Divider(
              height: 8,
              color: Colors.black,
            ),
            ListTile(
              title: Center(child: Text('Edit')),
            ),
          ],
        ),
      ),
    );
  }

  void getUsername() async {
    final prefs = await SharedPreferences.getInstance();
    _username = prefs.getString('username') as String;
    setState(() {}); //USe a Rebuild The App
  }
}
