import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/home.dart';
import 'package:flutter_ui/widgets/chat_bubble.dart';

class Screen2 extends StatelessWidget {
  const Screen2({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.white,
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
              icon: const Icon(Icons.menu, color: Colors.white, size: 30),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.only(bottom: 70),
            children: [
              // Container(
              //   height: screenHeight * 0.3,
              //   width: double.infinity,
              //   decoration: const BoxDecoration(
              //       color: Colors.blue,
              //       borderRadius: BorderRadius.only(
              //         topLeft: Radius.circular(0),
              //         topRight: Radius.circular(0),
              //         bottomLeft: Radius.circular(50),
              //         bottomRight: Radius.circular(300),
              //       )),
              //   child: Padding(
              //     padding: const EdgeInsets.only(left: 25.0),
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         SizedBox(height: screenHeight * 0.02),
              //         const Icon(
              //           Icons.chat_rounded,
              //           color: Colors.white,
              //           size: 30,
              //         ),
              //         SizedBox(height: screenHeight * 0.02),
              //         const Text(
              //           "Hi There!",
              //           style: TextStyle(
              //               fontSize: 25,
              //               fontWeight: FontWeight.w500,
              //               color: Colors.white),
              //         ),
              //         SizedBox(height: screenHeight * 0.02),
              //         const Text(
              //           "Welcome to online service.How can\nwe help you today?",
              //           style: TextStyle(
              //               fontSize: 18,
              //               fontWeight: FontWeight.w600,
              //               color: Colors.white),
              //         )
              //       ],
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: ChatBubble(
                  msg: "ofcourse are you interested in month-to-month or long term?",
                  boxcolor: Colors.blue,
                  txtcolor: Colors.white,
                  bordercolor: Colors.blue,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              const Center(
                  child: Text("July 25 23:24",
                      style: TextStyle(fontSize: 12, color: Colors.black))),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                      child: const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage:AssetImage("assets/images/profile.jpeg")
                        
                      ),
                    ),
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Text(
                            "Isla",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "1m ago",
                            style: TextStyle(),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 90.0),
                child: ChatBubble(
                  msg: "HI Could you tell me about your subscription options?",
                  boxcolor: Colors.white,
                  txtcolor: Colors.black,
                  bordercolor: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: ChatBubble(
                  msg: "ofcourse are you interested in month-to-month or long term?",
                  boxcolor: Colors.blue,
                  txtcolor: Colors.white,
                  bordercolor: Colors.blue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                      child: const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage:AssetImage("assets/images/profile.jpeg")
                      ),
                    ),
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Text(
                            "Isla",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "1m ago",
                            style: TextStyle(),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 90.0),
                child: ChatBubble(
                  msg: "HI Could you tell me about your subscription options?",
                  boxcolor: Colors.white,
                  txtcolor: Colors.black,
                  bordercolor: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: ChatBubble(
                  msg: "ofcourse are you interested in month-to-month or long term?",
                  boxcolor: Colors.blue,
                  txtcolor: Colors.white,
                  bordercolor: Colors.blue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: ChatBubble(
                  msg: "ofcourse are you interested in month-to-month or long term?",
                  boxcolor: Colors.blue,
                  txtcolor: Colors.white,
                  bordercolor: Colors.blue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                      child: const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage:AssetImage("assets/images/profile.jpeg")
                      ),
                    ),
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Text(
                            "Isla",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "1m ago",
                            style: TextStyle(),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 90.0),
                child: ChatBubble(
                  msg: "HI Could you tell me about your subscription options?",
                  boxcolor: Colors.white,
                  txtcolor: Colors.black,
                  bordercolor: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: ChatBubble(
                  msg: "ofcourse are you interested in month-to-month or long term?",
                  boxcolor: Colors.blue,
                  txtcolor: Colors.white,
                  bordercolor: Colors.blue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: ChatBubble(
                  msg: "ofcourse are you interested in month-to-month or long term?",
                  boxcolor: Colors.blue,
                  txtcolor: Colors.white,
                  bordercolor: Colors.blue,
                ),
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 50,
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                children: [
                  const Flexible(
                    child: TextField(
                      maxLines: null,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: "Write a reply...",
                        hintStyle: TextStyle(color: Colors.black),
                        
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        //isDense: true,
                      ),
                    ),
                  ),
                  const Icon(Icons.emoji_emotions,color: Colors.grey,size: 30,),
                  const Icon(Icons.image,color: Colors.grey,size: 30),
                  const Icon(Icons.edit_document,color: Colors.grey,size: 30),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.send, color: Colors.blue,size: 30),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
