import 'package:flutter/material.dart';
import 'package:flutter_practical/Data/search_page.dart';
import 'package:flutter_practical/accountpage.dart';
import 'package:flutter_practical/notifications_page.dart';
import 'package:flutter_practical/productdetails.dart';
import 'package:flutter_practical/signin.dart';


class HomePage extends StatefulWidget {  
//statful for changing state when moving between pages
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();   //manage state
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Index for the selected tab
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey(); // Key for the drawer(control scaffold element)

  // Method to handle navigation between tabs
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected tab
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color.fromARGB(255, 38, 38, 38),
      drawer: Drawer(
        backgroundColor: Colors.white.withOpacity(0.95),
        width: 260,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Text(
                'Walksy App',
                style: TextStyle(color: Color(0xFFE577A8), fontSize: 24),
              ),
            ),
            ListTile(               //has title and functionality
              title: const Text('Profile', style: TextStyle(color: Color.fromARGB(97, 51, 1, 39), fontSize: 24),),
              
              onTap: () {
                // Handle Profile tap
              },
            ),
            ListTile(
              title: const Text('Orders', style: TextStyle(color: Color.fromARGB(97, 34, 2, 23), fontSize: 24),),
              onTap: () {
                // Handle Orders tap
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Sign Out', style: TextStyle(color: Color.fromARGB(99, 46, 3, 22), fontSize: 24),),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context, //current page context, to make navigator know>> navigate from what page
                  MaterialPageRoute(builder: (context) => SignInPage()),//future page
                  (route) => false, // Removes all previous routes
                );
              },
            ),
          ],
        ),
      ),
      body: Builder(
        builder: (context) {
          return IndexedStack(
            index: _selectedIndex,
            children: [
              _buildHomeContent(),
              
             SearchPage(),
             NotificationsPage(),

              
              AccountScreen(),        
              // const Center(
              //     child: Text('Account Page',
              //         style: TextStyle(color: Colors.white))),
            ],
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: const Color.fromARGB(255, 55, 54, 54),// Navigation bar background
        currentIndex: _selectedIndex, // Highlight the selected tab
        onTap: _onItemTapped, // Handle tap on the tab
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xFFE577A8), // Icon color
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Color(0xFFE577A8), // Icon color
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                Icon(
                  Icons.notifications,
                  color: Color(0xFFE577A8), // Icon color
                ),
                // Positioned(
                // right: 0,
                // top: 0,
                // child: CircleAvatar(
                //   radius: 10,
                //   backgroundColor: Color(0xffe76359),
                //   child: const Text(
                //     '99+',
                //     style: TextStyle(
                //       fontSize: 8,
                //       color: Colors.white,
                //        fontWeight: FontWeight.bold,
                //      ),
                //    ),
                //   ),
                //  ),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Color(0xFFE577A8), // Icon color
            ),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget _buildHomeContent() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              scaffoldKey.currentState?.openDrawer(); // Open drawer on press
            },
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/images/shoe6.jpg',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: double.infinity,
                height: 430,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.4),
                      Colors.transparent,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Enjoy Offers',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Step into Comfort, Walk with Style",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          _buildSectionHeader('Shoes by Walksy', 'View all'),
          const SizedBox(height: 10),
          _buildHorizontalList(),
          const SizedBox(height: 20),
          _buildSectionHeader('Trending Today', 'View all'),
          const SizedBox(height: 10),
          _buildHorizontalList(),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title, String actionText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              actionText,
              style: const TextStyle(
                color: Color(0xFFE577A8),
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHorizontalList() {
    return SizedBox(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          GestureDetector(
            child: _buildCard(
                'Nike Sneakers', 'black', '\$110', 'assets/images/shoe5.jpg'),
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context){return ProductDetailPage();}));
                },
          ),
          GestureDetector(
            child: _buildCard(
                'Casual Shoes', 'grey', '\$90', 'assets/images/shoe4.jpg'),
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context){return ProductDetailPage();}));
                },
          ),
          GestureDetector(
            child: _buildCard(
                'Converse', 'red', '\$213', 'assets/images/shoe3.jpg'),
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context){return ProductDetailPage();}));
                },
          ),
        ],
      ),
    );
  }

  Widget _buildCard(
      String title, String subtitle, String price, String imagePath) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: Colors.grey[800],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(),
            child: Image.asset(
              imagePath,
              height: 93,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  price,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
