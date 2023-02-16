import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    Stream<QuerySnapshot> categories =
        FirebaseFirestore.instance.collection("categories").snapshots();
    return Column(
      children: [
        StreamBuilder<QuerySnapshot>(
            stream: categories,
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshots) {
              return Container(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: snapshots.data!.docs.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Text("${snapshots.data!.docs[index]['name']}"),
                      ),
                    );
                  },
                ),
              );
            })
      ],
    );
  }
}
