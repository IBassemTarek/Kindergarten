import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart';

class RemotlyServices {
  final CollectionReference remotly =
      FirebaseFirestore.instance.collection('remotly');

  List<RemotlyModel> _remotlyListSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return RemotlyModel(
        titleA: doc.get('titleA'),
        url: doc.get('url'),
        imageURL: doc.get('imageURL'),
        source: doc.get('source'),
        title: doc.get('title'),
      );
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<RemotlyModel>> get remotlyData {
    return remotly.snapshots().map(_remotlyListSnapShot);
  }
}
