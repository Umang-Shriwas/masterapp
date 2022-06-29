import 'package:flutter/material.dart';
import 'package:task1/Screens/Models/cardmodel.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 16,
            fontFamily: "Marked Fool",
          ),
        ),
      ),
      body: Center(
          child: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) => Card(
          elevation: 10,
          shadowColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
            side: BorderSide(color: Colors.black, width: 3),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  child: CircleAvatar(
                    radius: 59,
                    backgroundImage: NetworkImage(
                      dataList[index].image,
                    ),
                  ),
                  radius: 62,
                  backgroundColor: Colors.red,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    dataList[index].name,
                    style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    "Student of Chouksey Engineering College \n Branch-Cse \n Sem-6th"
                  ),
                ),
              ),
              
            ],
          ),
        ),
      )),
    ));
  }
}
