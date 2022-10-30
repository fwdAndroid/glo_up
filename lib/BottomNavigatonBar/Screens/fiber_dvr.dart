import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Fiber_dev extends StatelessWidget {
  const Fiber_dev({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var orientation;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('profile')
                      .snapshots(),
                  builder: (context, AsyncSnapshot snapshot) {
                    var ds = snapshot.data!.docs[snapshot];
                    return snapshot.hasData
                        ? GridView.builder(
                            itemCount: ds.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount:
                                        (orientation == Orientation.portrait)
                                            ? 2
                                            : 3),
                            itemBuilder: (BuildContext context, int index) {
                              return Image.network(ds['profilePhotoURL']);
                            },
                          )
                        : Text("data");
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
