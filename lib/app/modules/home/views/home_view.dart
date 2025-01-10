import 'package:bibliofind/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  // Controller logic, like filtering categories, can be added here
}

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.grey[700]),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('BiblioFind', style: TextStyle(fontWeight: FontWeight.bold)),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSearchBar(),
                    _buildCategoryButtons(),
                    _buildSectionTitle('Whats New!'),
                    _buildWideScrollableBookRow([
                      _buildWideBookCard('The Secret Adversary', 'Agatha Christie', 'Rating: 4.0 stars', 'Harga: 45.000 Rp', 'assets/images/tsa.jpg'),
                      _buildWideBookCard('Crime & Punishment', 'Fyodor Dostoevski', 'Rating: 4.0 stars', 'Harga: 45.000 Rp', 'assets/images/cnp.jpg'),
                      _buildWideBookCard('No Longer Human', 'Osamu Dazai', 'Rating: 4.5 stars', 'Harga: 50.000 Rp', 'assets/images/nlh.jpg'),
                      _buildWideBookCard('Dilan 1990', 'Pidi Baiq', 'Rating: 4.8 stars', 'Harga: 60.000 Rp', 'assets/images/dl90.jpg'),
                    ]),
                    _buildSectionTitle('Best Sellers'),
                    _buildBookRow([
                      _buildBookCard(1,'Laut Bercerita', 'Leila S. Chudori', 4.8, '90.000 Rp', 'assets/images/lb.jpg'),
                      _buildBookCard(2, 'Psikologi of Money', 'Morgan Housel', 4.8, '35.000 Rp', 'assets/images/pom.jpg'),
                      _buildBookCard(3, 'Manusia dan Badainya', 'Syahid Muhammad', 4.0, '90.000 Rp', 'assets/images/mdb.jpg'),
                      _buildBookCard(4, 'Tanah Para Bandit', 'Tere Liye', 4.8, '45.000 Rp', 'assets/images/tnp.jpg'),
                    ]),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 8,
          selectedItemColor: const Color.fromARGB(255, 16, 70, 114),
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view),
              label: 'Grid',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'Bag',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Temukan Buku yang disukai',
          prefixIcon: Icon(Icons.search),
          suffixIcon: Icon(Icons.filter_list),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryButtons() {
    final categories = ['All', 'Romance', 'Sci-Fi', 'Fantasy', 'Classics'];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: categories.map((category) {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(category),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0, bottom: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildBookRow(List<Widget> books) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Wrap(
        spacing: 16.0,
        runSpacing: 16.0,
        children: books.map((book) => SizedBox(width: MediaQuery.of(Get.context!).size.width / 2 - 24, child: book)).toList(),
      ),
    );
  }

  Widget _buildWideScrollableBookRow(List<Widget> books) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: books.map((book) {
            return Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: book,
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildBookCard(int id, String title, String author, double? rating, String? price, String imagePath) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.SINOPSIS, arguments: {
          'title': title,
          'author': author,
          'rating': rating,
          'price': price,
          'imagePath': imagePath,
        });
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
              child: Image.asset(imagePath, fit: BoxFit.cover, height: 200, width: double.infinity),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(author, style: TextStyle(color: Colors.grey[600], fontSize: 14)),
                  if (rating != null) Text('Rating: $rating stars'),
                  if (price != null) Text('Price: $price'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWideBookCard(String title, String author, String? rating, String? price, String imagePath) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.SINOPSIS, arguments: {
          'title': title,
          'author': author,
          'rating': rating,
          'price': price,
          'imagePath': imagePath,
        });
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        elevation: 3,
        child: SizedBox(
          width: 250,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.horizontal(left: Radius.circular(12.0)),
                child: Image.asset(imagePath, fit: BoxFit.cover, height: 100, width: 80),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(author, style: TextStyle(color: Colors.grey[600], fontSize: 12)),
                      if (rating != null) Text(rating, style: TextStyle(fontSize: 12)),
                      if (price != null) Text(price, style: TextStyle(fontSize: 12)),
                    ],
                  ),
            ),
          ),
        ],
      ),
    ),
    )
  );
}
}

