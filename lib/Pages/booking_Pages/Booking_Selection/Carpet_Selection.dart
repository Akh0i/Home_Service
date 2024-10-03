import 'package:flutter/material.dart';
import 'package:home_service/Pages/Order_Summary_Pages/BathroomSummary.dart';
import 'package:intl/intl.dart'; // Add this for date formatting

class CarpetSelection extends StatefulWidget {
  const CarpetSelection({super.key});

  @override
  State<CarpetSelection> createState() => CarpetSelectionState();
}

class CarpetSelectionState extends State<CarpetSelection> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  // Method to pick a date
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  // Method to pick a time
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 290,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "Asset/cleaning_Service/Carpet_Cleaning.jpeg",
                          ),
                          fit: BoxFit.cover)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.arrow_back,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ])),
              Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Appatment Size",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Chip(
                          backgroundColor:
                              const Color.fromARGB(199, 236, 234, 234),
                          label: const Text(
                            " 1 BHK",
                            style: TextStyle(color: Colors.black),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          side: BorderSide.none,
                          elevation: 10.0,
                          shadowColor: Colors.black,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Chip(
                          backgroundColor:
                              const Color.fromARGB(199, 236, 234, 234),
                          label: const Text(
                            " 1 BHK",
                            style: TextStyle(color: Colors.black),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          side: BorderSide.none,
                          elevation: 10.0,
                          shadowColor: Colors.black,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Chip(
                          backgroundColor:
                              const Color.fromARGB(199, 236, 234, 234),
                          label: const Text(
                            " 1 BHK",
                            style: TextStyle(color: Colors.black),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          side: BorderSide.none,
                          elevation: 10.0,
                          shadowColor: Colors.black,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Chip(
                          backgroundColor:
                              const Color.fromARGB(199, 236, 234, 234),
                          label: const Text(
                            " 1 BHK",
                            style: TextStyle(color: Colors.black),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          side: BorderSide.none,
                          elevation: 10.0,
                          shadowColor: Colors.black,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: [
                        Chip(
                          backgroundColor:
                              const Color.fromARGB(199, 236, 234, 234),
                          label: const Text(
                            " 1 BHK",
                            style: TextStyle(color: Colors.black),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          side: BorderSide.none,
                          elevation: 10.0,
                          shadowColor: Colors.black,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Chip(
                          backgroundColor:
                              const Color.fromARGB(199, 236, 234, 234),
                          label: const Text(
                            " 1 BHK",
                            style: TextStyle(color: Colors.black),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          side: BorderSide.none,
                          elevation: 10.0,
                          shadowColor: Colors.black,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Chip(
                          backgroundColor:
                              const Color.fromARGB(199, 236, 234, 234),
                          label: const Text(
                            " 1 BHK",
                            style: TextStyle(color: Colors.black),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          side: BorderSide.none,
                          elevation: 10.0,
                          shadowColor: Colors.black,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Area in Sqft ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 15),
                        child: TextFormField(
                          decoration: InputDecoration(
                              suffixIcon: const Icon(Icons.add),
                              hintText: "Area in Square feet",
                              filled: true,
                              fillColor: const Color.fromARGB(32, 61, 59, 59),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(29))),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Pick a date",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () => _selectDate(context),
                          child: const Text("Select Date"),
                        ),
                        const SizedBox(width: 20),
                        selectedDate != null
                            ? Text(
                                DateFormat('yyyy-MM-dd').format(selectedDate!))
                            : const Text("No date chosen")
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Pick a time",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () => _selectTime(context),
                          child: const Text("Select Time"),
                        ),
                        const SizedBox(width: 20),
                        selectedTime != null
                            ? Text(
                                "${selectedTime!.hour}:${selectedTime!.minute}")
                            : const Text("No time chosen")
                      ],
                    ),
                    Container(
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
                            r"$750",
                            style: TextStyle(color: Colors.white),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Bathroomsummary()));
                            },
                            child: const Text(
                              "Continue",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
