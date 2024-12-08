import 'package:flutter/material.dart';

class MyModelBottomSheet extends StatefulWidget {
  const MyModelBottomSheet({super.key});

  @override
  State<MyModelBottomSheet> createState() => _MyModelBottomSheetState();
}

class _MyModelBottomSheetState extends State<MyModelBottomSheet> {
  /// here we create categories
  List<Map<String, dynamic>> cate = [
    {"image": "assets/images/petrol-pump.png", "title": "Petrol"},
    {"image": "assets/images/restaurant.png", "title": "Restaurant"},
    {"image": "assets/images/salad.png", "title": "Food"},
    {"image": "assets/images/stack-of-books.png", "title": "Book"},
    {"image": "assets/images/temporary-housing.png", "title": "Rent"},
    {"image": "assets/images/heartbeat.png", "title": "Health"},
    {"image": "assets/images/free.png", "title": "Free"},
    {"image": "assets/images/destination.png", "title": "Trip"},
    {"image": "assets/images/bed.png", "title": "Hotel"}
  ];

  /// selected categories
  Map<String, dynamic>? selectedCategories;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Show Model Bottom sheet"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Card(
                child: Column(
                  children: [
                    /// selected categories image shoe hare

                    selectedCategories != null
                        ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(selectedCategories!["image"] , height: 200,),
                        )
                        : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/free.png" , height: 200,),
                        ),
                    selectedCategories != null
                        ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              selectedCategories!["title"], style: TextStyle(fontSize: 25),
                            ),
                        )
                        : const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Free" , style: TextStyle(fontSize: 25 ),),
                        )
                  ],
                ),
              ),
            ),
             const SizedBox(height: 100,),
            ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      showDragHandle: true,
                      backgroundColor: Colors.blue,
                      elevation: 10,
                      builder: (BuildContext context) {
                        return Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          child: GridView.builder(
                            itemCount: cate.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      /// here we send clicked index
                                      selectedCategories = cate[index];
                                    });
                                    Navigator.of(context).pop();
                                  },
                                  child: Card(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "${cate[index]["image"]}",
                                          height: 70,
                                          width: 70,
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          "${cate[index]["title"]}",
                                          style: const TextStyle(fontSize: 20),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      });
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white),
                child: const Text(
                  "Select Categories",
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}

/// IN THIS VIDEO
/// SHOW MODEL MODEL BOTTOM SHEET
/// SIMPLE STEP FLOW
/// check complete code
