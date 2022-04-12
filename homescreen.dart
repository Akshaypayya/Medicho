import 'dart:core';
import 'dart:io';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    //double Height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/Images/mainscreen.jpg",
              fit: BoxFit.fill,
              width: Width,
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            new SizedBox(
              height: 10.0,
              child: new Center(
                child: new Container(
                  margin: new EdgeInsetsDirectional.only(start: 49.9, end: 1.0),
                  height: 9.9,
                  color: Color(0xffF3E31B),
                ),
              ),
            ),
            SizedBox(
              height: 15,
              width: 15,
            ),
            new SizedBox(
              height: 10.0,
              child: new Center(
                child: new Container(
                  margin: new EdgeInsetsDirectional.only(start: 49.9, end: 1.0),
                  height: 9.9,
                  color: Color(0xffF3E31B),
                ),
              ),
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            ElevatedButton(
              child: Text('Get Started!',
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FourthPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Color(0xffF3E31B),
                  textStyle: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: BackButton(color: Colors.black),
        backgroundColor: Color(0xffF3E31B),
        title: Text('User Profile', style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Text(
          'Profile details',
          style: TextStyle(
              color: Color(0xffF3E31B),
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: BackButton(color: Colors.black),
        backgroundColor: Color(0xffF3E31B),
        title: Text('My Cart', style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Text(
          'Your cart is empty',
          style: TextStyle(
              color: Color(0xffF3E31B),
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ),
    );
  }
}

class WishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: BackButton(color: Colors.black),
        backgroundColor: Color(0xffF3E31B),
        title: Text('My Wishlist', style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Text(
          'your saved products appear here!',
          style: TextStyle(
              color: Color(0xffF3E31B),
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ),
    );
  }
}

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: BackButton(color: Colors.black),
        backgroundColor: Color(0xffF3E31B),
        title: Text('Order Summary', style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Text(
          'Order Details',
          style: TextStyle(
              color: Color(0xffF3E31B),
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ),
    );
  }
}

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: BackButton(color: Colors.black),
        backgroundColor: Color(0xffF3E31B),
        title: Text('Notification Settings',
            style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Text(
          'Customize Notification',
          style: TextStyle(
              color: Color(0xffF3E31B),
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ),
    );
  }
}

class CustomerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: BackButton(color: Colors.black),
        backgroundColor: Color(0xffF3E31B),
        title: Text('Customer Support', style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Text(
          'Need Any help?',
          style: TextStyle(
              color: Color(0xffF3E31B),
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: BackButton(color: Colors.black),
        backgroundColor: Color(0xffF3E31B),
        title: Text('Settings', style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Text(
          'Application Settings',
          style: TextStyle(
              color: Color(0xffF3E31B),
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ),
    );
  }
}

class FourthPage extends StatefulWidget {
  _FourthPage createState() => _FourthPage();
}

class _FourthPage extends State<FourthPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final drawerHeader = UserAccountsDrawerHeader(
      accountName: Text(
        'User Name',
        style: TextStyle(color: Colors.black),
      ),
      accountEmail: Text(
        'username@gmail.com',
        style: TextStyle(color: Colors.black),
      ),
      decoration: BoxDecoration(
        color: Color(0xffF3E31B),
      ),
      currentAccountPicture: CircleAvatar(
        child: Icon(
          Icons.person,
          color: Color(0xffF3E31B),
          size: 50.0,
        ),
        backgroundColor: Colors.black,
      ),
    );

    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
          title: Text('Profile'),
          leading: Icon(
            Icons.person_pin,
            color: Color(0xffF3E31B),
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ProfilePage()));
          },
        ),
        ListTile(
          title: Text('My cart'),
          leading: Icon(
            Icons.shopping_cart,
            color: Color(0xffF3E31B),
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => CartPage()));
          },
        ),
        ListTile(
          title: Text('My Wishlist'),
          leading: Icon(
            Icons.favorite,
            color: Color(0xffF3E31B),
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => WishlistPage()));
          },
        ),
        ListTile(
          title: Text('Order Summary'),
          leading: Icon(
            Icons.anchor_outlined,
            color: Color(0xffF3E31B),
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => OrderPage()));
          },
        ),
        ListTile(
          title: Text('My Notification'),
          leading: Icon(
            Icons.notifications_active,
            color: Color(0xffF3E31B),
          ),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => NotificationPage()));
          },
        ),
        ListTile(
          title: Text('Customer Support'),
          leading: Icon(
            Icons.support_agent,
            color: Color(0xffF3E31B),
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => CustomerPage()));
          },
        ),
        ListTile(
          title: Text('Settings'),
          leading: Icon(
            Icons.architecture,
            color: Color(0xffF3E31B),
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SettingsPage()));
          },
        ),
        Divider(),
        ListTile(title: Text('Notification Settings'), onTap: () {}),
        ListTile(title: Text('Help Center'), onTap: () {}),
        ListTile(title: Text('Privacy Policy'), onTap: () {}),
        ListTile(title: Text('Legal'), onTap: () {}),
        Container(
            child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Column(
                  children: <Widget>[
                    Divider(),
                    ListTile(title: Text('Medichotheonlineshopping@gmail.com')),
                  ],
                ))),
      ],
    );
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xffF3E31B),
        title: Text('Medicho Home', style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            color: Color(0xffF3E31B),
            icon:
                Image.asset('assets/Images/icons/logout.png', fit: BoxFit.fill),
            onPressed: () => exit(0),
          ),
        ],
      ),
      body: Container(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20.0),
          crossAxisSpacing: 10.0,
          crossAxisCount: 2,
          children: List<Widget>.generate(10, (index) {
            return GridTile(
              child: Card(),
            );
          }),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffF3E31B),
        elevation: 0,
        currentIndex: index,
        onTap: (int index) {
          setState(() {
            this.index = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black, size: 22.0),
            label: 'Search',
            backgroundColor: Color(0xffF3E31B),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black, size: 22.0),
            label: 'Home',
            backgroundColor: Color(0xffF3E31B),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.black, size: 22.0),
            label: 'My cart',
            backgroundColor: Color(0xffF3E31B),
          ),
        ],
      ),
      drawer: Drawer(
        child: drawerItems,
      ),
    );
  }
}
