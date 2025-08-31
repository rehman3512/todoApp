// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:todoapp/View/HomeView/taskView/FireStore/Firebase.dart';
// import 'package:todoapp/View/HomeView/taskView/FireStore/update.dart';
//
// class FetchData extends StatefulWidget {
//   const FetchData({super.key});
//
//   @override
//   State<FetchData> createState() => _FetchDataState();
// }
//
// class _FetchDataState extends State<FetchData> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(onPressed: (){
//         Get.to(()=>FirebaseView());
//       }),
//       body: StreamBuilder(stream: FirebaseFirestore.instance.collection("insert").snapshots(),
//           builder: (context,snapshots){
//         return ListView.builder(
//           itemCount: snapshots.data!.docs.length,
//           itemBuilder: (context,index){
//             return ListTile(
//               onLongPress: (){
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>UpdateView(
//                   title: snapshots.data!.docs[index]["title"].toString(),
//                     docId: snapshots.data!.docs[index]["docId"].toString(),
//                   description: snapshots.data!.docs[index]["description"].toString(),)
//                 ),);
//               },
//               onTap: () {
//                 Get.defaultDialog(
//                   title: "Delete",
//                   content: Text("Are you sure you want to delete this"),
//                   actions: [
//                     TextButton(onPressed: (){
//                       Get.back();
//                     }, child: Text("Cancel")),
//                     TextButton(onPressed: () async{
//                       await FirebaseFirestore.instance.collection("insert").doc(
//                         snapshots.data!.docs[index]["docId"].toString()).delete();
//                       Get.back();
//                     }, child: Text("Confirm"))
//                   ]
//                 );
//               },
//               title: Text(snapshots.data!.docs[index]["title"].toString()),
//               subtitle: Text(snapshots.data!.docs[index]["description"].toString()),
//               trailing: Text(snapshots.data!.docs[index]["docId"].toString()),
//             );
//           },
//         );
//           })
//     );
//   }
// }
