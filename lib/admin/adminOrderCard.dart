// import 'package:cloud_firestore/cloud_firestore.dart';
//
//
// import 'package:flutter/material.dart';
//
// int counter = 0;
//
// class AdminOrderCard extends StatelessWidget {
//   final int itemCount;
//   final List<DocumentSnapshot> data;
//   final String orderID;
//   final String addressID;
//   final String orderBy;
//
//   AdminOrderCard({
//     Key ? key,
//     required this.itemCount,
//     required this.data,
//     required this.orderID,
//     required this.addressID,
//     required this.orderBy,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Route route;
//         if (counter == 0) {
//           counter = counter + 1;
//           route = MaterialPageRoute(
//               builder: (c) => AdminOrderDetails(
//                     orderID: orderID,
//                     orderBy: orderBy,
//                     addressID: addressID,
//                   ));
//         }
//         Navigator.push(context, route);
//       },
//       child: Container(
//         color: Colors.greenAccent,
//         // decoration: new BoxDecoration(
//         //   gradient: new LinearGradient(
//         //     colors: [Colors.pink, Colors.greenAccent],
//         //     begin: const FractionalOffset(0.0, 0.0),
//         //     end: const FractionalOffset(1.0, 0.0),
//         //     stops: [0.0, 1.0],
//         //     tileMode: TileMode.clamp,
//         //   ),
//         // ),
//         padding: EdgeInsets.all(10.0),
//         margin: EdgeInsets.all(10.0),
//         height: itemCount * 190.0,
//         child: ListView.builder(
//           itemCount: itemCount,
//           physics: NeverScrollableScrollPhysics(),
//           itemBuilder: (c, index) {
//             ItemModel model = ItemModel.fromJson(data[index].data());
//             return sourceOrderInfo(model, context);
//           },
//         ),
//       ),
//     );
//   }
// }
