import 'package:flutter/material.dart';

class ScrollableAppbar extends StatelessWidget {
  const ScrollableAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        /// scrollable app bar
        slivers: [
          SliverAppBar(
            /// set height of app bar
            expandedHeight: 200,
            floating: true,
            pinned: true,
            snap: true,
            backgroundColor: Colors.orange,

            flexibleSpace: FlexibleSpaceBar(
              title: const SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Hello developer",
                      style: TextStyle(fontSize: 18, color: Colors.white70),
                    ),
                    Text(
                      "Good Morning",
                      style: TextStyle(fontSize: 23, color: Colors.white),
                    ),
                  ],
                ),
              ),
              centerTitle: false,
              background: Image.network(
                "https://images.pexels.com/photos/670061/pexels-photo-670061.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                fit: BoxFit.cover,
              ),
            ),
          ),

          /// here we create list view to show app bar scrolling effect
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 4, mainAxisSpacing: 4),
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue.shade100),
                  child: Center(
                      child: Text(
                    "$index",
                    style: TextStyle(fontSize: 21, color: Colors.black),
                  )),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}

/// IN THIS VIDEO WE IMPLEMENT HOW TO MAKE APP BAR SCROLLABLE
/// ------------ SCROLLABLE APP BAR ---------------------///

/// here we provide table
/*

Feature	                     Property	                Behavior
Collapsible AppBar	pinned:  true,floating: false	    AppBar shrinks when scrolling
Floating AppBar floating:    true	                    AppBar appears when scrolling up
Snap Effect	floating:        true,snap: true	        AppBar instantly appears with slight scroll
Always Collapsed	pinned:    true	                    AppBar remains small and fixed

*/

/// Complete