import 'package:flutter/material.dart';
import 'package:tugas02/detail/detail_produk.dart';
import 'package:tugas02/profile/profile.dart';

class HomePage extends StatefulWidget {
  final String username;
  const HomePage({super.key, 
    required this.username});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String username = "";
  String namaproduk = "Novel Matahari";
  String harga = "Rp. 80.000,-";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nama Aplikasi', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle), 
            color: Colors.white,
            iconSize: 30.0,
            onPressed: () {
              Navigator.push(context, 
          MaterialPageRoute(builder: (context){
            return Profile(username : widget.username);
          }));
            },
            ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              // horizontal: 24, 
              vertical: 12),
              child: const Center(
                child: Column(
                  children: [
                    SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image(image: AssetImage("assets/dua.jpg"), width: 300,),
                        SizedBox(width: 20,),
                        Image(image: AssetImage("assets/tiga.jpg"), width: 300,),
                        SizedBox(width: 20,),
                        Image(image: AssetImage("assets/empat.jpg"), width: 300,),                        
                      ],
                    ),
                  ),
                  ],
                ),
              ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24, 
              vertical: 12),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Welcome ${widget.username}',
                  // textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 24),
                  ),
              ),
          ),

         GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.9,
                  ),
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder:(context, index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                      horizontal: 24, 
                      vertical: 12),
                      child: Card(
                        child: Column(
                        children: [
                          SizedBox(height: 18,),
                          Center(
                            child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,  // Warna border
                                width: 1,             // Ketebalan border
                              ),
                            ),
                            child: Image(image: AssetImage("assets/satu.jpeg"), width: 55,),
                          ),
                          ),
                          SizedBox(height: 2,),
                          Text(namaproduk, style: TextStyle(fontSize: 10)),
                          SizedBox(height: 2,),
                          Text('Harga : $harga', style: TextStyle(fontSize: 10)),
                        
                          ElevatedButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return DetailProduk (
                                namaproduk : namaproduk,
                                harga : harga,
                              );
                            }));
                          }, child: Text('Beli', style: TextStyle(color: Colors.blue, fontSize: 10,
                    ))),
                          SizedBox(height: 5,),
                        ],
                      ),
                      )
                    );
                  },
                ),
                
        ],
      ),
      )
    );
  }

}
