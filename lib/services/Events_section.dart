

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class EventsSctionServices {
  final CollectionReference  eventsSction  = FirebaseFirestore.instance.collection('EventsSction');


  List<EventsSection> _eventsSctionSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return EventsSection(
        titleA: doc.get('titleA'),source: doc.get('source'),
        imageURL: doc.get('imageURL'),
        title: doc.get('title'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<EventsSection>> get eventsSctionData {
    return eventsSction.snapshots().map(_eventsSctionSnapShot);
  }
  }