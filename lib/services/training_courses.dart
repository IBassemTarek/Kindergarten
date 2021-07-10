import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kindergarten/models/pdf_model.dart'; 

class TrainingCoursesServices {
  final CollectionReference trainingCourses = FirebaseFirestore.instance.collection('training courses');


  List<TrainingCourses> _trainingCoursesListSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return TrainingCourses(
        url:  doc.get('url'),
        ); 
    }).toList();
  }

  // define a stream of data that give response when user login or logout
  Stream<List<TrainingCourses>> get trainingCoursesData {
    return trainingCourses.snapshots().map(_trainingCoursesListSnapShot);
  }
  }