import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FetchData extends StatefulWidget {
  const FetchData({super.key});

  @override
  State<FetchData> createState() => _FetchDataState();
}

class _FetchDataState extends State<FetchData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(stream: FirebaseFirestore.instance.collection("insert").snapshots(),
          builder: (context,snapshots){
        return ListView.builder(
          itemCount: snapshots.data!.docs.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(snapshots.data!.docs[index]["title"].toString()),
              subtitle: Text(snapshots.data!.docs[index]["description"].toString()),
            );
          },
        );
          })
    );
  }
}
