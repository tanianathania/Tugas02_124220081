import 'package:flutter/material.dart';

class DetailProduk extends StatefulWidget {
  final String namaproduk;
  final String harga;

  const DetailProduk({super.key, 
    required this.namaproduk,
    required this.harga,
    });

  @override
  State<DetailProduk> createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nama Produk', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 24, vertical: 20, 
              ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,  // Warna border
                      width: 1,             // Ketebalan border
                    ),
                  ),
                  child: Image(image: AssetImage("assets/satu.jpeg"), width: 200,),
                ),
                ), 
                SizedBox(height: 30,),             
                Row(
                  children: [
                    Text(
                      widget.namaproduk,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(), 
                    Icon(Icons.star),
                    Text(
                      '4,5',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ), 
                  ],
                ),
                SizedBox(height: 20,), 
                const Text('Matahari adalah novel karya Tere Liye yang merupakan bagian dari seri Bumi. Novel ini melanjutkan petualangan Raib, Seli, dan Ali di dunia paralel. Dalam Matahari, ketiga sahabat ini menjelajahi dunia klan Matahari yang penuh misteri, tantangan, dan keindahan. Mereka berusaha mengungkap rahasia besar yang tersembunyi, menghadapi bahaya yang menguji persahabatan, serta mengasah kemampuan mereka dalam menghadapi musuh yang lebih kuat. \n\nSINOPSIS BUKU: \nNovel ini merupakan trilogi setelah novel sebelumnya yakni Bumi dan Bulan.Kini anak istimewa itu bernama Ali. Sama dengan Seli dan Raib, ia juga berusia 15 tahun, masihkelas X. Jika orangtuanya mengizinkan, bahkan seharusnya ia sudah duduk di tingkat akhir ilmufisika program doktor. Bagi Ali, guru dan teman-teman sekelasnya sangat membosankan. Namunhal itu tidak berlangsung lama setelah pada akhirnya teman sekelasnya mengetahui ada hal anehpada dirinya dan Seli. Kalau Seli bisa mengeluarkan petir, lain halnya dengan Ali, ia bisa berubah menjadi beruang raksasa. Mengetahui bahwa mereka istimewa, mereka kemudianberpetualang ketempat-tempat yang menakjubkan.Ali, sangatlah paham paham bahwa dunia tidaklah sesederhana yang dilihat oleh orang-orang,dan lebih daripada itu, Ali akhirnya mengerti, bahwa persahabatan merupakan hal yang indah\nyang paling utama.\nApa yang sebenarnya terjadi pada Ali?',
                  style: TextStyle(
                    fontSize: 15,
                    
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 20,), 
                Row(
                  children: [
                    const Text('Harga : ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.harga,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ), 
                    Spacer(),
                    ElevatedButton(onPressed: (){
                      ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Produk berhasil dibeli!')),
                    );
                    }, 
                    child: Text('Beli',
                     style: TextStyle(color: Colors.blue,
                    ),))
                    //beli 
                  ],
                ),
                SizedBox(height: 20,),         
              ],
            )
          )          
        ],
      ),
      )
    );
  }

}
