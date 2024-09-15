import 'package:flutter/material.dart';

class Destination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  blurRadius: 20,
                  offset: Offset(0, 7),
                  color: Colors.black54,
                )
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.width,
              image: const AssetImage('images/dahab2.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
