import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController descriptioncontroller = TextEditingController();
  FirebaseFirestore db = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('add data'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: titlecontroller,
              decoration: const InputDecoration(
                  hintText: 'title', border: OutlineInputBorder()),
              style: const TextStyle(fontSize: 20.0, color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: descriptioncontroller,
              maxLines: 3,
              decoration: const InputDecoration(
                  hintText: 'description', border: OutlineInputBorder()),
              style: const TextStyle(fontSize: 20.0, color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              String id = DateTime.now().millisecondsSinceEpoch.toString();
              //adding data
              db.collection('todo').add({
                'title': titlecontroller.text.toString().trim(),
                'description': descriptioncontroller.text.toString().trim(),
              });
            },
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(20),
                color: Colors.teal,
              ),
              child: const Center(child: Text('Add Data')),
            ),
          )
        ],
      ),
    );
  }
}
