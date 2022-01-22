// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:e_shop/Admin/adminOrderCard.dart';
// import 'package:e_shop/Admins/UploadPages.dart';
// import 'package:e_shop/Admins/viewPurchasedItems.dart';
// import 'package:e_shop/Config/config.dart';
// import 'package:e_shop/admin/uploadItems.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import '../Widgets/loadingWidget.dart';
// import '../Widgets/orderCard.dart';
// import '';
//
// class AdminShiftOrders extends StatefulWidget {
//   @override
//   _MyOrdersState createState() => _MyOrdersState();
// }
//
// class _MyOrdersState extends State<AdminShiftOrders> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           iconTheme: IconThemeData(color: Colors.white),
//           flexibleSpace: Container(
//             color: Colors.greenAccent,
//             // decoration: new BoxDecoration(
//             //   gradient: new LinearGradient(
//             //     colors: [Colors.pink, Colors.greenAccent],
//             //     begin: const FractionalOffset(0.0, 0.0),
//             //     end: const FractionalOffset(1.0, 0.0),
//             //     stops: [0.0, 1.0],
//             //     tileMode: TileMode.clamp,
//             //   ),
//             // ),
//           ),
//           centerTitle: true,
//           title: Text(
//             "My Orders",
//             style: TextStyle(color: Colors.white),
//           ),
//           actions: [
//             IconButton(
//               icon: Icon(Icons.arrow_back),
//               onPressed: () {
//                 Navigator.of(context).pushReplacement(
//                     MaterialPageRoute(builder: (ctx) => UploadPage()));
//               },
//             ),
//           ],
//         ),
//         body: StreamBuilder<QuerySnapshot>(
//           stream: FirebaseFirestore.instance.collection("orders").snapshots(),
//           builder: (c, snapshot) {
//             return snapshot.hasData
//                 ? ListView.builder(
//                     itemCount: snapshot.data.docs.length,
//                     itemBuilder: (c, index) {
//                       return FutureBuilder<QuerySnapshot>(
//                         future: FirebaseFirestore.instance
//                             .collection("items")
//                             .where("shortInfo",
//                                 whereIn: snapshot.data.docs[index]
//                                     [EcommerceApp.productID])
//                             .get(),
//                         builder: (c, snap) {
//                           return snap.hasData
//                               ? AdminOrderCard(
//                                   itemCount: snap.data.docs.length,
//                                   data: snap.data.docs,
//                                   orderID: snapshot.data.docs[index].id,
//                                   orderBy: snapshot.data.docs[index]["orderBy"],
//                                   addressID: snapshot.data.docs[index]
//                                       ["addressID"],
//                                 )
//                               : Center(
//                                   child: circularProgress(),
//                                 );
//                         },
//                       );
//                     },
//                   )
//                 : Center(
//                     child: circularProgress(),
//                   );
//           },
//         ),
//       ),
//     );
//   }
// }
