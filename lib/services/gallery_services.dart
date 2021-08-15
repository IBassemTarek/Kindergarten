

import 'package:cloud_firestore/cloud_firestore.dart'; 
import 'package:kindergarten/models/gallery_model.dart';

class GalleryServices {
  final CollectionReference  gallery  = FirebaseFirestore.instance.collection('gallery');


  List<GalleryModel> _gallerySnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return GalleryModel( 
        pdf: doc.get('pdf'),
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<GalleryModel>> get galleryData {
    return gallery.snapshots().map(_gallerySnapShot);
  }
  }