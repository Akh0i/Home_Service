import 'package:flutter/material.dart';
import 'package:home_service/Pages/Authentication_Pages/order_Conform.dart';

class OrderSummary extends StatefulWidget {
  const OrderSummary({super.key});

  @override
  State<OrderSummary> createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              // Navigator.pop(context);
            }),
        title: const Text(
          "Order Summery ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Card(
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.credit_card),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      " Credit & Debit Card",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Card(
              margin: EdgeInsets.only(bottom: 20),
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.assured_workload),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Net Banking",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Card(
              margin: EdgeInsets.only(bottom: 20),
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.electric_moped),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      " Cash On Delivery",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Card(
              margin: EdgeInsets.only(bottom: 20),
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.wallet),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Wallets",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.only(bottom: 20),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.account_balance_wallet),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          " Upi",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "Asset/payments/Gpay1.jpeg",
                          height: 70,
                          width: 70,
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        Image.asset(
                          "Asset/payments/amazonepay.jpeg",
                          height: 70,
                          width: 70,
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        Image.asset(
                          "Asset/payments/phonepe.jpeg",
                          height: 70,
                          width: 70,
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        Image.asset(
                          "Asset/payments/ola.jpeg",
                          height: 70,
                          width: 70,
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "Asset/payments/Paytm.jpeg",
                          height: 70,
                          width: 70,
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        Image.asset(
                          "Asset/payments/othwe upi.jpeg",
                          height: 70,
                          width: 70,
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 0, 0, 0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      r"$1120",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const OrderConform()));
                        },
                        child: const Text(
                          "Pay",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
