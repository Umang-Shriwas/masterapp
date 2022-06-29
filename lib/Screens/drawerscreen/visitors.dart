import 'package:flutter/material.dart';

class visitors extends StatelessWidget {
  const visitors({ Key? key }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: const Text(
            'Visitors',
            style: TextStyle(
              fontSize: 16,
              fontFamily: "Marked Fool",
            ),
          ),
        ),
      ),
      body: Center(
      child: ElevatedButton(
        child: const Text('This is BottomSheet'),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 200,
                color: Colors.cyan,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('BottomSheet'),
                      ElevatedButton(
                        child: const Text('Close BottomSheet'),
                        onPressed: () => Navigator.pop(context),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    ),
  ),
  );
  }
}