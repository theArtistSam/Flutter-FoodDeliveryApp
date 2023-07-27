import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/Data/restaurant.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Data/globalData.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 55),
        child: ListView(
          physics:  const BouncingScrollPhysics(),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Baku, Azerbaijan",
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                const Icon(Icons.expand_more_sharp),
              ],              
            ),

            // Space
            const SizedBox(height: 67),

            // Search Bar
            Row(
              children: [
                const Icon(Icons.search),
                const SizedBox(width: 17),
                Expanded(
                  child: TextField(
                    //autofocus: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search All restaurants",
                      contentPadding: const EdgeInsets.all(0),
                      hintStyle: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                      ),
                    ),
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                    onChanged: (value) {
                      // Handle text changes
                    },
                  ),
                ),
              ],
            ),

            // Space
            const SizedBox(height: 55),

            SizedBox(
              height: 110,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: 5, // Number of items in the list
                 separatorBuilder: (context, index) => const SizedBox(width: 28),
                itemBuilder: (context, index) {
                  // Return the foodSuggestion widget for each index
                  return foodSuggestion(restaurantTypes[index]);
                },
              ),
            ),
  
            // Space
            const SizedBox(height: 65),
            Row(
              children: [
                Text(
                  "Recommended",
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600
                  ),
                ),
                const SizedBox(width: 20),
                Text(
                  "Popular",
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),

            // Space
            const SizedBox(height: 50),
            Column(
              children: [
                foodTile(restaurants[0]),
                const SizedBox(height: 38),
                foodTile(restaurants[1]),
                const SizedBox(height: 38),
                foodTile(restaurants[2]),
                const SizedBox(height: 38),
                foodTile(restaurants[3]),
                const SizedBox(height: 38),
                foodTile(restaurants[4]),
                const SizedBox(height: 38),
                foodTile(restaurants[5]),
              ],
            )
            
          
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.house),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_outlined),
            label: 'Foods',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_outlined),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
        // currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        // onTap: _onItemTapped,
      
      )
    );
  }

  Widget foodSuggestion(RestaurantType restaurantType){
    return Column(
      children: [
        SizedBox(
          width: 83,
          height: 80,
          child: Image.asset(
            "lib/Pictures/${restaurantType.typePicture}.png",
          ),
        ),
        const SizedBox(height: 13),
        Text(
          restaurantType.typeName,
          style: GoogleFonts.inter(
            fontSize: 13,
            color: Colors.black87,
            fontWeight: FontWeight.w600
          ),
        ),
      ],
    );
  }

  Widget foodTile(Restaurant restaurant) {
  return Row(
    children: [
      SizedBox(
        width: 87,
        height: 89,
        child: Image.asset(
          "lib/Pictures/${restaurant.picture}.png",
        ),
      ),
      const SizedBox(width: 15),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              restaurant.name,
              style: GoogleFonts.inter(
                fontSize: 15,
                color: Colors.black54,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              restaurant.type.typeName,
              style: GoogleFonts.inter(
                fontSize: 15,
                color: Colors.black45,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 22),
            Row(
              children: [
                Text(
                  restaurant.rating,
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    color: Colors.black45,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                Text(
                  "\$\$",
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    color: Colors.black45,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),                  
                Text(
                  restaurant.deliveryTime,
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    color: Colors.black45,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}

}
