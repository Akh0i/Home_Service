import 'package:flutter/material.dart';

class BookingsPage extends StatefulWidget {
  const BookingsPage({super.key});

  @override
  _BookingsPageState createState() => _BookingsPageState();
}

class _BookingsPageState extends State<BookingsPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookings'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Active'),
            Tab(text: 'History'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ActiveBookingsTab(),
          HistoryBookingsTab(),
        ],
      ),
    );
  }
}

class ActiveBookingsTab extends StatelessWidget {
  const ActiveBookingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        BookingCard(
          title: 'Full House Cleaning',
          service: 'Jaylon Cleaning Services',
          date: 'Jan 4, 2022 at 4am',
          price: '₹2599',
          status: 'In Process',
          actionText: 'Cancel',
        ),
        BookingCard(
          title: 'Kitchen Cleaning',
          service: 'Sj Cleaning Services',
          date: 'Dec 4, 2022 at 6am',
          price: '₹3000',
          status: 'Assigned',
          actionText: 'Cancel',
        ),
        BookingCard(
          title: 'Bedroom Cleaning',
          service: 'John Cleaning Services',
          date: 'Feb 17, 2022 at 6am',
          price: '₹2499',
          status: 'Assigned',
          actionText: 'Cancel',
        ),
      ],
    );
  }
}

class HistoryBookingsTab extends StatelessWidget {
  const HistoryBookingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        BookingCard(
          title: 'Full House Cleaning',
          service: 'Jaylon Cleaning Services',
          date: 'Jan 4, 2022 at 4am',
          price: '₹2599',
          status: 'Cancelled',
          actionText: '',
        ),
        BookingCard(
          title: 'Kitchen Cleaning',
          service: 'Sj Cleaning Services',
          date: 'Dec 4, 2022 at 6am',
          price: '₹3000',
          status: 'Complete',
          actionText: '',
        ),
        BookingCard(
          title: 'Bedroom Cleaning',
          service: 'John Cleaning Services',
          date: 'Feb 17, 2022 at 6am',
          price: '₹2499',
          status: 'Complete',
          actionText: '',
        ),
      ],
    );
  }
}

class BookingCard extends StatelessWidget {
  final String title;
  final String service;
  final String date;
  final String price;
  final String status;
  final String actionText;

  const BookingCard({
    super.key,
    required this.title,
    required this.service,
    required this.date,
    required this.price,
    required this.status,
    required this.actionText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: ListTile(
        title: Text(title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(service),
            const SizedBox(height: 5),
            Text(date),
            const SizedBox(height: 5),
            Text(price),
            const SizedBox(height: 5),
            Text(status, style: const TextStyle(color: Colors.orange)),
          ],
        ),
        trailing: actionText.isNotEmpty
            ? TextButton(
                onPressed: () {},
                child:
                    Text(actionText, style: const TextStyle(color: Colors.red)),
              )
            : null,
      ),
    );
  }
}
