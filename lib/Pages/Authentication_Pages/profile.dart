import 'package:flutter/material.dart';

void main() {
  runApp(AccountApp());
}

class AccountApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AccountPage(),
    );
  }
}

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // Profile
          ListTile(
            leading: Icon(Icons.person),
            title: Text('My Profile'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
          // My Favourites
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('My Favourites'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyFavouritesPage()),
              );
            },
          ),
          // Notifications
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationsPage()),
              );
            },
          ),
          // My Bookings
          ListTile(
            leading: Icon(Icons.book),
            title: Text('My Bookings'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyBookingsPage()),
              );
            },
          ),
          // Refer and Earn
          ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text('Refer and Earn'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReferAndEarnPage()),
              );
            },
          ),
          // Contact Us
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text('Contact Us'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactUsPage()),
              );
            },
          ),
          // Help Center
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help Center'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelpCenterPage()),
              );
            },
          ),
          // Offers and Coupons
          ListTile(
            leading: Icon(Icons.local_offer),
            title: Text('Offers And Coupons'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OffersAndCouponsPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Create separate classes for each page

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Profile')),
      body: Center(child: Text('Profile Page Content')),
    );
  }
}

class MyFavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Favourites')),
      body: Center(child: Text('Favourites Page Content')),
    );
  }
}

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notifications')),
      body: Center(child: Text('Notifications Page Content')),
    );
  }
}

class MyBookingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Bookings')),
      body: Center(child: Text('Bookings Page Content')),
    );
  }
}

class ReferAndEarnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Refer and Earn')),
      body: Center(child: Text('Refer and Earn Page Content')),
    );
  }
}

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact Us')),
      body: Center(child: Text('Contact Us Page Content')),
    );
  }
}

class HelpCenterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Help Center')),
      body: Center(child: Text('Help Center Page Content')),
    );
  }
}

class OffersAndCouponsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Offers And Coupons')),
      body: Center(child: Text('Offers and Coupons Page Content')),
    );
  }
}
