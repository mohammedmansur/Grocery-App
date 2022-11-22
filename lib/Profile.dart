import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
              top: 100,
              left: 130,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/profile.png'),
                      fit: BoxFit.scaleDown),
                  borderRadius: BorderRadius.circular(70),
                  color: Color.fromARGB(255, 238, 233, 226),
                ),
                height: 140,
                width: 140,
              ),
            ),
            Positioned(
              top: 200,
              right: 125,
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)),
                child: Icon(
                  Icons.camera_alt,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ),
            const Positioned(
                top: 270,
                left: 113,
                child: Text(
                  'Shanya Hushyar',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
            Positioned(
                top: 360,
                left: 10,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 40,
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.numbers,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('751*******')
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
