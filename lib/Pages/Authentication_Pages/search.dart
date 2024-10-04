import 'package:flutter/material.dart';

class ServiceSearchPage extends StatelessWidget {
  final List<Service> services = [
    Service(
        name: 'Plumbers',
        description: 'Who helps you in plumbing works',
        imageUrl: 'Asset/images/john_Carter.jpg'),
    Service(
      name: 'Electricians',
      description: 'Who helps you in electrical works',
      imageUrl: 'Asset/images/Harry_potter.png',
    ),
    Service(
      name: 'Painters',
      description: 'Who helps you in painting anything',
      imageUrl: 'Asset/images/Marry_john.jpg',
    ),
    Service(
      name: 'Carpenters',
      description: 'Who helps you in carpenting works',
      imageUrl: 'Asset/images/Michle.jpg',
    ),
    Service(
      name: 'Home Cleaning',
      description: 'Who helps you in cleaning the house',
      imageUrl: 'Asset/images/Lucas.jpeg',
    ),
    Service(
      name: 'Car Washers',
      description: 'Who helps you in cleaning the car',
      imageUrl: 'Asset/images/Marry_john.jpg',
    ),
    Service(
      name: 'Car Repairing',
      description: 'Who helps you in car repair works',
      imageUrl: 'Asset/images/Harry_potter.png',
    ),
  ];

  ServiceSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for services',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            // List of Services
            Expanded(
              child: ListView.builder(
                itemCount: services.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        services[index].imageUrl,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      services[index].name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(services[index].description),
                    onTap: () {
                      // Handle service item click
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // Search tab selected
        onTap: (index) {
          // Handle bottom navigation tap
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Bookings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Account'),
        ],
      ),
    );
  }
}

class Service {
  final String name;
  final String description;
  final String imageUrl;

  Service({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}
