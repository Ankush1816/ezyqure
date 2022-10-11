
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:path_provider/path_provider.dart';


final usersRef = FirebaseFirestore.instance.collection('users');

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  void initstate() {
    getusers();

    super.initState();
  }

  getusers() {
    usersRef.get().then((QuerySnapshot snapshot) {
      for (var doc in snapshot.docs) {
        if (kDebugMode) {
          print(doc.data);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
