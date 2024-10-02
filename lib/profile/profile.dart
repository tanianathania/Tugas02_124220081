import 'package:flutter/material.dart';
import 'package:tugas02/login/login.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile extends StatefulWidget {
  final String username;
  const Profile({super.key, 
    required this.username});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 24, 
              ),
            child: Column(
              children: [
                SizedBox(height: 16,),
                Text('Username :',
                  // textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 16,),
                Container(
                    padding: const EdgeInsets.all(5), // Padding di dalam kotak
                    decoration: BoxDecoration(
                      color: Colors.blue[100], // Warna latar belakang
                      borderRadius: BorderRadius.circular(10), // Sudut melengkung
                    ),
                    child: Text(
                      '${widget.username}', // Hanya username yang ditampilkan di dalam kotak
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                SizedBox(height: 16,),
                
                Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {
                     _launchURL('https://www.instagram.com/taniantha');
                    },
                    child: Text("Button App",  style: TextStyle(color: Colors.blue,
                    )),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 30,
                      ),
                    ),
                  ),
                  SizedBox(height: 16,),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginPages();
                      }), (route) => false);
                    },
                    child: Text("Logout",  style: TextStyle(color: Colors.blue,
                    )),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 30,
                      ),
                    ),
                  )
                ],
              ),
                )
              ],
            )
          )          
        ],
      ),
      )
    );
  }

}
