import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/events_model.dart';

class EventsServices {
  final CollectionReference events =
      FirebaseFirestore.instance.collection('events');

  List<EventsModel> _eventsSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return EventsModel(
        urlImage: doc.get('urlImage'),
        
      );
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<EventsModel>> get eventsData {
    return events.snapshots().map(_eventsSnapShot);
  }
}
