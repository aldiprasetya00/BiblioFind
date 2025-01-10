import 'package:bibliofind/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SinopsisView extends StatelessWidget {
  const SinopsisView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
         onPressed: () {
                     
                    Get.toNamed(Routes.HOME); // Navigate to the register view
                  
                    },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image(image: 
                 AssetImage('assets/images/lb.jpg'),
                      height: 250,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Laut Bercerita',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Leila S. Chudori',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.star, color: Colors.amber, size: 20),
                          SizedBox(width: 4),
                          Text('4.8', style: TextStyle(fontSize: 14)),
                        ],
                      ),
                      const SizedBox(width: 16),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.teal.shade50,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Text(
                          'Fantasy',
                          style: TextStyle(
                            color: Colors.teal,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Text('394 Pages', style: TextStyle(fontSize: 14)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Synopsis',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Expanded(
              child: SingleChildScrollView(
                child: Text(
                  "Laut Bercerita adalah novel karya penulis asal Indonesia bernama Leila Salikha Chudori. Ia juga merupakan seorang wartawan di majalah Tempo. Novel terbitan tahun 2017 ini, mengangkat tema persahabatan, percintaan, kekeluargaan, dan rasa kehilangan. Dengan berlatarkan waktu di tahun 90-an dan 2000, novel ini mampu membius para pembacanya untuk menerobos ruang masa lalu dan kembali melihat peristiwa yang terjadi di tahun yang bersangkutan.\n\nDengan kata lain, novel setebal 394 halaman ini, mengingatkan para pembacanya akan era-era reformasi di tahun 1998 yang bernas akan kepahitan dan kekejaman bagi para pembela rakyat. Leila selaku penulis memang menegaskan bahwa novel ini hanya historical fiction, tetapi ia menulis berdasarkan pada fakta yang ada. Hal itu karena sebelum Leila mulai menulis novel ini, ia melakukan riset wawancara terlebih dahulu secara langsung pada korban yang berhasil kembali atau kerabat korban. \n\nTidak hanya itu, sang penulis juga mengaku bahwa ia memerlukan penyelidikan mendalam terkait karakter dari tokoh-tokoh yang ada, tempat serta peristiwa yang sudah berlalu. Berdasarkan hal-hal itulah yang membuat novel ini seakan hidup saat dibaca. Kemudian, untuk menyelesaikan novel ini, kurang lebih memakan waktu 5 tahun. Menariknya, novel ini berhasil digarap ke dalam bentuk film pendek yang berdurasi kurang lebih 30 menit dan disutradarai Pritagita Arianegara.",
                  style: TextStyle(fontSize: 14, height: 1.5),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ],
        ),
      ),
       bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade300,
                minimumSize: const Size(48, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  minimumSize: const Size(double.infinity, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Buy Now',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

