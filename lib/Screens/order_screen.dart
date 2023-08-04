import 'package:flutter/material.dart';

import '../models/transaction_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController yearController = TextEditingController();

  List<Contact> contacts = List.empty(growable: true);
  bool code = false;
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text('CARS RECORDS'),
        toolbarHeight: 80,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                  hintText: 'Car Model Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(24),
                  ))),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: contactController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  hintText: 'Km/litre',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(24),
                  ))),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: yearController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  hintText: 'Years',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(24),
                  ))),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(150, 50),
                      backgroundColor: Color.fromRGBO(8, 138, 145, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                    ),
                    onPressed: () {
                      String name = nameController.text.trim();
                      String contact = contactController.text.trim();
                      String years = yearController.text.trim();
                      if (name.isNotEmpty &&
                          contact.isNotEmpty &&
                          years.isNotEmpty) {
                        setState(() {
                          nameController.text = '';
                          contactController.text = '';
                          yearController.text = '';
                          contacts.add(Contact(
                              name: name, contact: contact, years: years));
                        });
                      }
                    },
                    child: const Text(
                      'Save',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(150, 50),
                      backgroundColor: Color.fromRGBO(8, 138, 145, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                    ),
                    onPressed: () {
                      //
                      String name = nameController.text.trim();
                      String contact = contactController.text.trim();
                      String years = yearController.text.trim();
                      if (name.isNotEmpty &&
                          contact.isNotEmpty &&
                          years.isNotEmpty) {
                        setState(() {
                          nameController.text = '';
                          contactController.text = '';
                          yearController.text = '';
                          contacts[selectedIndex].name = name;
                          contacts[selectedIndex].contact = contact;
                          contacts[selectedIndex].years = years;
                          selectedIndex = -1;
                        });
                      }
                      //
                    },
                    child: const Text(
                      'Update',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    )),
              ],
            ),
            contacts.isEmpty
                ? SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'No Records Yet..',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 10,
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset(
                            'assets/undraw_delivery_truck_vt6p.png',
                          ),
                        ),
                      ],
                    ),
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount: contacts.length,
                      itemBuilder: (context, index) => getRow(index),
                    ),
                  )
          ],
        ),
      ),
    );
  }

  Widget getRow(int index) {
    int km = int.parse(contacts[index].contact);
    int yr = int.parse(contacts[index].years);

    Color getColor() {
      if (km >= 15) {
        if (yr <= 5) {
          return Colors.green;
        } else {
          return Colors.red;
        }
      } else {
        return Colors.red;
      }
    }

    return Card(
      color: getColor(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Color.fromRGBO(8, 138, 145, 1),
          foregroundColor: Colors.white,
          child: Text(
            contacts[index].name[0],
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Model:${contacts[index].name}',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              'Km/litre:${contacts[index].contact}',
              style: const TextStyle(fontSize: 15),
            ),
            Text(
              'Years:${contacts[index].years}',
              style: const TextStyle(fontSize: 15),
            ),
          ],
        ),
        trailing: SizedBox(
          width: 70,
          child: Row(
            children: [
              InkWell(
                  onTap: () {
                    //
                    nameController.text = contacts[index].name;
                    contactController.text = contacts[index].contact;
                    yearController.text = contacts[index].years;
                    setState(() {
                      selectedIndex = index;
                    });
                    //
                  },
                  child: const Icon(Icons.edit)),
              SizedBox(
                width: 20,
              ),
              InkWell(
                  onTap: (() {
                    //
                    setState(() {
                      contacts.removeAt(index);
                    });
                    //
                  }),
                  child: const Icon(Icons.delete)),
            ],
          ),
        ),
      ),
    );
  }
}

class Code {
  int km;
  int yr;
  Code({required this.km, required this.yr});
}
