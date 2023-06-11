import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/home.dart';
import 'package:flutter_ui/widgets/products.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.white,
        title: const Text(
          "Package",
          style: TextStyle(
              color: Colors.blue, fontSize: 22, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.blue,
          ),
          onPressed: () {
            Navigator.pop(context,
                          MaterialPageRoute(builder: (context) => const Home()));
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: const Icon(Icons.menu, color: Colors.blue, size: 30),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children:  const [
            SizedBox(height: 10,),
            Products(imgPath: "assets/images/c1.png", title: "5 T- shirts      (\$10)", description: "Get \$10 back on this!"),
             SizedBox(height: 10,),
            Products(imgPath: "assets/images/dry.png", title: "5 T- shirts      (\$10)", description: "Get \$10 back on this!"),
             SizedBox(height: 10,),
            Products(imgPath: "assets/images/c3.png", title: "5 T- shirts      (\$10)", description: "Get \$10 back on this!"),
             SizedBox(height: 10,),
            Products(imgPath: "assets/images/c4.png", title: "5 T- shirts      (\$10)", description: "Get \$10 back on this!"),
             SizedBox(height: 10,),
            Products(imgPath: "assets/images/c5.png", title: "5 T- shirts      (\$10)", description: "Get \$10 back on this!"),
          ],
        ),
      ),
    );
  }
}