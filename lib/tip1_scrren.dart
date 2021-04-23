import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';

class Tip_1 extends StatelessWidget {
  testFunc(){
    var _list;
//    Query _testRef = FirebaseDatabase.instance.reference().orderByChild("trip_distance").limitToFirst(50);
//    DatabaseReference _testRef = FirebaseDatabase.instance.reference();
    final databaseReference = FirebaseDatabase.instance.reference();
    databaseReference
        .orderByChild('trip_distance')
        .once()
        .then((snapshot) {
      var firstPageItems = snapshot.value;

      if (firstPageItems != null) {
        List<dynamic> curretList = [];
        firstPageItems.forEach((orderId, orderData) {

          print ("date_slug " + orderData['date_slug'] + "\r\n\r\n\r\n");
          curretList.add(orderData);
        });

        _list.addAll(curretList);
      }
    });
//    _testRef.once().then((DataSnapshot snapshot){
//      Map<dynamic, dynamic> values = snapshot.value;
//      values.forEach((key,values) {
//        print(values["name"]);
//      });
//    });
//    databaseReference.child('0').once().then((value) => print(value));
    print("hi");
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('data_2'),
          RaisedButton(onPressed: () {
            testFunc();
          }),
        ],
      ),
    );
  }
}
