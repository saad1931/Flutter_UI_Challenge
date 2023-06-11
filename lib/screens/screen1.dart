// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/home.dart';
import 'package:flutter_ui/widgets/pickup_widget.dart';
import 'package:flutter_ui/widgets/timeslots_widget.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;
    
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.white,
        title: const Text(
          "Pickup Date",
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
          children: [
            SizedBox(height: screenHeight * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: screenWidth * 0.02),
                const Text(
                  "When would you like your pickup?",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                const Icon(Icons.calendar_month, color: Colors.blue, size: 30)
              ],
            ),
            SizedBox(height: screenHeight * 0.02),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PickupWidget(
                        day: "Fri",
                        datee: "25 Jun",
                        daytime: "Yesterday",
                        boxcolor: Colors.grey,
                        daycolor: Colors.white),
                    SizedBox(width: screenWidth * 0.05),
                    PickupWidget(
                        day: "Sat",
                        datee: "26 Jun",
                        daytime: "Today",
                        boxcolor: Colors.blue,
                        daycolor: Colors.white),
                    SizedBox(width: screenWidth * 0.05),
                    PickupWidget(
                        day: "Sun",
                        datee: "27 Jun",
                        daytime: "Tomorrow",
                        boxcolor: Colors.white,
                        daycolor: Colors.black),
                    SizedBox(width: screenWidth * 0.05),
                    PickupWidget(
                        day: "Mon",
                        datee: "28 Jun",
                        daytime: "Blockday",
                        boxcolor: Colors.red,
                        daycolor: Colors.white),
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            const Center(
                child: Text("Available Time Slots",
                    style: TextStyle(fontSize: 16, color: Colors.black))),
            SizedBox(height: screenHeight * 0.02),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TimeSlotWidget(
                      boxcolor: Colors.blue,
                      timee: "7am - 9pm",
                      fontcolor: Colors.white),
                  SizedBox(width: screenWidth * 0.05),
                  TimeSlotWidget(
                      boxcolor: Colors.white,
                      timee: "10am - 12pm",
                      fontcolor: Colors.black),
                  SizedBox(width: screenWidth * 0.05),
                  TimeSlotWidget(
                      boxcolor: Colors.white,
                      timee: "1pm - 2pm",
                      fontcolor: Colors.black),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TimeSlotWidget(
                      boxcolor: Colors.white,
                      timee: "4pm - 6pm",
                      fontcolor: Colors.black),
                  SizedBox(width: screenWidth * 0.05),
                  TimeSlotWidget(
                      boxcolor: Colors.white,
                      timee: "8pm - 10pm",
                      fontcolor: Colors.black),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Padding(
              padding: const EdgeInsets.only(right: 12.0, left: 12.0),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(right: 12.0, left: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Repeat Pickup",
                        style: TextStyle(fontSize: 20),
                      ),
                      ToggleButtons(
                        isSelected: const [true],
                        onPressed: (int index) {},
                        children: const [
                          Icon(
                            Icons.toggle_off,
                            color: Colors.blue,
                            size: 50,
                          ),
                        ],
                      ),
                      
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            const Padding(
              padding: EdgeInsets.only(left:18),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("How Often Repeat?",
                    style: TextStyle(fontSize: 16, color: Colors.black)),
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Padding(
              padding: const EdgeInsets.only(right: 12.0, left: 12.0),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(right: 12.0, left: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Every Week",
                        style: TextStyle(fontSize: 20),
                      ),
                      Icon(Icons.arrow_drop_down_sharp,color: Colors.black,)
                      
                    ],
                  ),
                ),
              ),
            ),        
            SizedBox(height: screenHeight * 0.04),
            const Padding(
              padding: EdgeInsets.only(left:18.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("How Many times?",
                    style: TextStyle(fontSize: 16, color: Colors.black)),
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Padding(
              padding: const EdgeInsets.only(right: 12.0, left: 12.0),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(right: 12.0, left: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "1",
                        style: TextStyle(fontSize: 20),
                      ),
                      Icon(Icons.arrow_drop_down_sharp,color: Colors.black,)
                      
                    ],
                  ),
                ),
              ),
            ), 
            SizedBox(height: screenHeight * 0.04),
            Padding(
              padding: const EdgeInsets.only(left:18.0,right: 18.0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                   shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                   ),
                    backgroundColor: Colors.blue,
                    
                  ),
                  onPressed: (){}, 
                  child: const Text("Continue",style: TextStyle(fontSize: 20,color: Colors.white),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
