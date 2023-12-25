import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

bool isFavorited = false;

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> items = [
    {
      'title': 'The History Of Java',
      'image':
          'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1395827710i/4066338.jpg',
      'description': 'This history of java  written by Thomas Stamford Raffles',
      'isFavorited': false
    },
    {
      'title': 'Dune: Bagian 1',
      'image':
          'https://cdn.gramedia.com/uploads/picture_meta/2023/3/26/ih86gbr4urzmibs3ah49hq.jpg',
      'description':
          'FRANK HERBERT (1920-1986) adalah kreator Dune, novel fiksi sains paling digandrungi sepanjang sejarah.',
      'isFavorited': false
    },
    {
      'title':
          'Atomic Habits: Perubahan Kecil yang Memberikan Hasil Luar Biasa',
      'image':
          'https://cdn.gramedia.com/uploads/items/9786020633176_.Atomic_Habit.jpg',
      'description':
          'Atomic Habits: Perubahan Kecil yang Memberikan Hasil Luar Biasa adalah buku kategori self improvement karya James Clear.',
      'isFavorited': false
    },
    {
      'title': 'Angsa dan Kelelawar',
      'image':
          'https://cdn.gramedia.com/uploads/picture_meta/2023/4/12/xelaqs3qkiaxjjfnnceq23.jpg',
      'description':
          'Lahir pada tahun 1958 di Osaka, Keigo Higashino (東野 圭吾) adalah salah satu penulis paling populer di Jepang. ',
      'isFavorited': false
    },
    {
      'title': 'Filosofi Teras',
      'image':
          'https://cdn.gramedia.com/uploads/items/img20220101_11444970.jpg',
      'description':
          'Buku yang pertama kali diterbitkan pada 2019 ini mengajarkan kita tentang pengendalian emosi negatif yang ada dalam diri kita. ',
      'isFavorited': false
    },
    {
      'title': 'How to Win Friends and Influence People in the Digital Age',
      'image':
          'https://cdn.gramedia.com/uploads/picture_meta/2023/3/3/d9xcfccajqba5sbzb4lwlu.jpg',
      'description':
          ' How to Win Friends and Influence People In The Digital Age cocok bagi pemimpin dan calon pemimpin, serta siapapun yang ingin menambah keterampilan dalam bersosialisasi di era digital.',
      'isFavorited': false
    },
    {
      'title':
          'The Ancient Chinese Wisdom: Bebas Dari Nafsu Keinginan Baru Bisa Hidup Tenang',
      'image':
          'https://cdn.gramedia.com/uploads/items/9789792291827_The_Ancient_Chinese_Wisdom_C_1_4.jpg',
      'description':
          'Penulis buku ini coba untuk mengangkat kebijaksanaan falsafah Tiongkok kuno ke dalam kehidupan yang fana ini agar bisa menambah pencerahan batin kita.',
      'isFavorited': false
    },
    {
      'title': 'Less Is More : Bebas Stress dengan Hidup Minimalis',
      'image':
          'https://cdn.gramedia.com/uploads/picture_meta/2023/7/29/4sgaeqngcm3nx8ozpco4g5.jpg',
      'description':
          'Buku ini bermaksud memberimu wawasan tentang minimalisme Jepang, sehingga kamu dapat menentukan hidupmu secara bijak dan mencapai gaya hidup minimalis tanpa harus menyerah pada semacam kode ketat atau seperangkat aturan.',
      'isFavorited': false
    },
    {
      'title': 'Rich Dad Poor Dad',
      'image':
          'https://cdn.gramedia.com/uploads/items/9786020333175_rich-dad-poor-dad-_edisi-revisi_.jpg',
      'description':
          '“Rich Dad Poor Dad adalah titik awal bagi siapa pun yang ingin memegang kendali atas masa depan keuangan mereka.”',
      'isFavorited': false
    },
    {
      'title': 'Pulau Batu di Samudra Buatan',
      'image':
          'https://cdn.gramedia.com/uploads/picture_meta/2023/11/15/6nz3yjw8ntsordc2jlcrvd.jpg',
      'description':
          'Ziggy Zezsyazeoviennazabrizkie lahir di Bandar Lampung. Karya-karyanya telah menerima Penghargaan Sastra Badan Bahasa, juga nominasi Kusala Sastra Khatulistiwa dan Sastra Pilihan Majalah Tempo. ',
      'isFavorited': false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 254, 217, 237),
        appBar: AppBar(
          title: const Text(
            'Readify',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 103, 114, 157),
        ),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 4, mainAxisSpacing: 4),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return GridTile(
                  footer: GridTileBar(
                    backgroundColor: const Color.fromARGB(115, 9, 9, 9),
                    title: Text(items[index]['title']!),
                    trailing: IconButton(
                      icon: Icon(
                        items[index]['isFavorited']
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        setState(() {
                          items[index]['isFavorited'] =
                              !items[index]['isFavorited'];
                        });
                        if (items[index]['isFavorited'] == false) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text('Removed from favorite'),
                            duration: Duration(milliseconds: 400),
                            backgroundColor: Color.fromARGB(255, 103, 114, 157), 
                          ));
                        } else {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text('Added to favorite'),
                            duration: Duration(milliseconds: 400),
                          backgroundColor: Color.fromARGB(255, 103, 114, 157), 
                          ));
                        }
                      },
                    ),
                  ),
                  child: Image.network(
                    items[index]['image']!,
                    fit: BoxFit.fill,
                    errorBuilder: (BuildContext context, Object exception,
                        StackTrace? stackTrace) {
                      return const Text('Error loading image');
                    },
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const CircularProgressIndicator();
                    },
                  ));
            }));
  }
}
