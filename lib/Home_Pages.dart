import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:loginui/services/firestore.dart';
import 'package:flutter/material.dart';

class home_pages extends StatefulWidget{
  const  home_pages({super.key});

  @override
  State<home_pages> createState() => _home_pagesState();
}

class _home_pagesState extends State<home_pages> {
//FirebaseFirestore object
  final firestoreservice Firestoreservice = firestoreservice();

  //textcontroller
  final TextEditingController TextController = TextEditingController();

  //Dialog Box
  void openNoteBox(String? docID) {
    showDialog(context: context, builder: (context) =>
        AlertDialog(
          content: TextField(
            controller: TextController,
          ),
          actions: [
            ElevatedButton(onPressed: () {
              if(docID==null){
                Firestoreservice.addNote(TextController.text);
              }
              else{
                Firestoreservice.updateNote(docID,TextController.text);
              }
              TextController.clear();
              Navigator.pop(context);
            }, child: Text("ADD"))
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
        child: Text(
        'Attendence Managament System',
        style: TextStyle(color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 18),
    ),
    ),
    backgroundColor:Colors.deepPurple,
      ),
    floatingActionButton: FloatingActionButton(
        onPressed: (){
          openNoteBox(null);
        },
        child: Text('Add'),
      ),

      body: StreamBuilder<QuerySnapshot>(
        stream: Firestoreservice.getNotesStream(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List notesList = snapshot.data!.docs;
            return ListView.builder(
                itemCount: notesList.length,
                itemBuilder: (context, index) {
                  //get each individual doc
                  DocumentSnapshot document = notesList[index];
                  String docID = document.id;

                  //get note from each doc
                  Map<String, dynamic> data = document.data() as Map<String,dynamic>;
                  String notetext = data['notes'];

                  return ListTile(
                    title: Text(notetext),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: (){
                            Firestoreservice.deleteNote(docID);
                          },
                          icon: Icon(Icons.delete),
                        ),
                        IconButton(
                          onPressed: (){
                            openNoteBox(docID);
                          },
                          icon: Icon(Icons.settings),
                        ),
                      ],
                    ) ,
                  );
                }
            );
          }
          else{
            return const Text("No Notes");
          }
        },
      ),
    );
  }
}