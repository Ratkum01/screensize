// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../images.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 161, 252),
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent[200],
        title: Text('D E S K T O P'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: AspectRatio(
                      aspectRatio: 9 / 4,
                      child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.greenAccent,
                      image: DecorationImage(
                          image: NetworkImage(imagesone), fit: BoxFit.cover)),
                ),
                    ),
                  ),
                  Expanded(
                       child: ListView.builder(
                    itemCount:  images.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.greenAccent,
                              image: DecorationImage(
                                  image: NetworkImage(images[index]),
                                  fit: BoxFit.cover)),
                          height: 120,
                        ),
                      );
                    }))
                ],
              ),
            ),
            Container(
              width: 200,
              color: Color.fromARGB(255, 238, 161, 252),
              child: ListView.builder(
                  itemCount: anim.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                         decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.greenAccent,
                              image: DecorationImage(
                                  image: NetworkImage(anim[index]),
                                  fit: BoxFit.cover)),
                        height: 200,
                        width: 150,
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
