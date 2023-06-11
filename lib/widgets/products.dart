import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final String imgPath;
  final String title;
  final String description;

  const Products({
    Key? key,
    required this.imgPath,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: screenHeight * 0.2,
                  width: screenWidth * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(
                    imgPath,
                    height: screenHeight * 0.2,
                    width: screenWidth * 0.2,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: screenHeight * 0.02),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: screenHeight * 0.1,
                                width: screenWidth * 0.16,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 122, 186, 239),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Icon(
                                  Icons.wash_rounded,
                                  color: Colors.black,
                                  size: 40,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                height: screenHeight * 0.1,
                                width: screenWidth * 0.16,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 122, 186, 239),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Icon(
                                  Icons.dry_cleaning,
                                  color: Colors.black,
                                  size: 40,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                height: screenHeight * 0.1,
                                width: screenWidth * 0.16,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 122, 186, 239),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Icon(
                                  Icons.iron,
                                  color: Colors.black,
                                  size: 50,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Row(
                          children: [
                            const Expanded(
                              child: Text(
                                "Wash",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            SizedBox(width: screenWidth * 0.04),
                            const Expanded(
                              child: Text(
                                "Dryclean",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.blue,
                                 
                                ),
                              ),
                            ),
                            SizedBox(width: screenWidth * 0.04),
                            const Expanded(
                              child: Text(
                                "Iron",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
