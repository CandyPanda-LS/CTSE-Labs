import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text(
          "My Card App",
          style: TextStyle(
            fontFamily: 'Source Sans Pro',
            color: Colors.white,
            fontSize: 20.0,
            letterSpacing: 2.5,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const CircleAvatar(
            radius: 90.0,
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ),
          const Text(
            'Lasal Hettiarachchi',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 40.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'FULLSTACK DEVELOPER',
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              color: Colors.teal.shade100,
              fontSize: 20.0,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
            width: 150.0,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),
          Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: const Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '+94 76 4694432',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
              )),
          Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: const Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'lasalshettiarachchi458@.com',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro'),
                ),
              ))
        ]),
      ),
    );
  }
}
