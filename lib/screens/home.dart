import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/screen1.dart';
import 'package:flutter_ui/screens/screen2.dart';
import 'package:flutter_ui/screens/screen3.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        elevation: 10.0,
        title: const Text("Home Screen"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12)
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                 shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                   ),
                ),
                onPressed: (){
                  Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Screen1()));
                }, 
                child: const Text("Pickup Screen")),
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12)
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                 shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                   ),
                ),
                onPressed: (){
                  Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Screen2()));
                }, 
                child: const Text("Chat Screen")),
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12)
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                 shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                   ),
                ),
                onPressed: (){
                  Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Screen3()));
                }, 
                child: const Text("Package Screen")),
            ),
          ),
        ],
      ),
    );
  }
}