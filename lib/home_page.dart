import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project1/database.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _selectedIcon = 0;
  @override
  Widget build(BuildContext context) {
    List listIcon = [
      FontAwesomeIcons.plane,
      FontAwesomeIcons.hotel,
      FontAwesomeIcons.taxi,
      FontAwesomeIcons.train,
      FontAwesomeIcons.motorcycle,
      FontAwesomeIcons.ship,
    ];
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),
            const TellUs(),
            const SizedBox(
              height: 20,
            ),
            listofIcons(listIcon),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Destinations',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'All Data',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 94, 26, 211)),
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              color: Colors.amber[100],
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: destination.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(15),
                    height: 100,
                    width: 210,
                    color: Colors.green[100],
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Positioned(
                          bottom: 5,
                          child: Container(
                            width: 200,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20 , top: 40,),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${destination[index]['activities'].length} activities' ,
                                     style: const TextStyle(
                                    fontSize: 20 ,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                  Text(destination[index]['description'],
                                   style :const TextStyle(color: Colors.grey),
                                   maxLines: 2,
                                   ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          width: 180,
                          height: 180,
                          fit: BoxFit.cover,
                          image: AssetImage(destination[index]['imageUrl'])),
                      )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  SizedBox listofIcons(List<dynamic> listIcon) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listIcon.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIcon = index;
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: (_selectedIcon == index)
                    ? const Color(0xFFED5818)
                    : const Color(0xFF5C5C5C),
              ),
              child: Icon(
                listIcon[index],
                color: (_selectedIcon == index)
                    ? const Color.fromARGB(255, 172, 107, 246)
                    : const Color(0xFFBEBEBE),
              ),
            ),
          );
        },
      ),
    );
  }
}

class TellUs extends StatelessWidget {
  const TellUs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 20,
        right: 40,
      ),
      child: Text(
        'Tell us about your destination in Egypt ?',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
