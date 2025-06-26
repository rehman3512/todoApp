// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
//
// class Fetch extends StatefulWidget {
//   const Fetch({super.key});
//
//   @override
//   State<Fetch> createState() => _FetchState();
// }
//
// class _FetchState extends State<Fetch> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder(
//           stream: FirebaseFirestore.instance.collection("insert").snapshots(),
//           builder: (context, snapshots){
//             return ListView.builder(
//                 itemCount: snapshots.data!.docs.length,
//                 itemBuilder: (context, index){
//                   return ListTile(
//                     title: Text(snapshots.data!.docs[index]["title"].toString()),
//                   );
//                 });
//           }),
//     );
//   }
// }
//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
//
// class InsertScreen extends StatefulWidget {
//   const InsertScreen({super.key});
//
//   @override
//   State<InsertScreen> createState() => _InsertScreenState();
// }
//
// class _InsertScreenState extends State<InsertScreen> {
//   TextEditingController titleController = TextEditingController();
//   TextEditingController descriptionController = TextEditingController();
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(children: [
//         SizedBox(height: 20),
//         Container(
//           height: 50,
//           width: 400,
//           margin: EdgeInsets.symmetric(horizontal: 10),
//           decoration: BoxDecoration(
//             color: AppColors.whiteColor,
//             border: Border.all(color: AppColors.blueColor),
//             borderRadius: BorderRadius.circular(15),
//           ),
//           child: TextFormFieldWidget(
//               icon: Icon(Icons.type_specimen_outlined),
//               text: "Enter your title",
//               controller: titleController),
//         ),
//         Container(
//           height: 50,
//           width: 400,
//           margin: EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             color: AppColors.whiteColor,
//             border: Border.all(color: AppColors.blueColor),
//             borderRadius: BorderRadius.circular(15),
//           ),
//           child: TextFormFieldWidget(
//               icon: Icon(Icons.type_specimen_outlined),
//               text: "Enter your descripton",
//               controller: descriptionController),
//         ),
//         FloatingActionButton(onPressed: () async{
//           await FirebaseFirestore.instance.collection("insert").add({
//             "title" : titleController.text,
//             "description": descriptionController.text,
//           });
//         })
//       ]),
//     );
//   }
// }
//
