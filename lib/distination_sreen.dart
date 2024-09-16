import 'package:flutter/material.dart';

class Destination extends StatelessWidget {
  final dest;
  const Destination({super.key, required this.dest});

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
          Hero(
            tag:dest['imageUrl'] ,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.width,
                image: AssetImage(dest['imageUrl']),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
