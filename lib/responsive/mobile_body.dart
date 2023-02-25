// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:koko4_ratkum/images.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[250],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 172, 90),
        title: Text(' M O B I L E'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: AspectRatio(
                aspectRatio: 16 / 9,
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
    );
  }
}
