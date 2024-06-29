import 'package:cloud_firestore/cloud_firestore.dart';

class firestoreservice{


  //get collection of notes
   final CollectionReference notes=FirebaseFirestore.instance.collection('notes');

  //Add Data
  Future<void> addNote(String Note){
    return notes.add({
      'notes':Note,
      'timestamp':Timestamp.now(),
    });
  }

  //Read Data
  Stream<QuerySnapshot> getNotesStream(){
    final noteStream =notes.orderBy('timestamp',descending: true).snapshots();
    return noteStream;
  }

  //Update Data
Future<void> updateNote(String docId,String newNote){
    return notes.doc(docId).update({
      'notes':newNote,
      'timestamp':Timestamp.now(),
    });
  }

  //Delete Data
   Future<void> deleteNote(String docId){
     return notes.doc(docId).delete();
   }
}