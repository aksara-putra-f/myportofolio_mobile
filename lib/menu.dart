import 'package:flutter/material.dart';

class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color;

  ItemHomepage(this.name, this.icon, this.color);
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final String npm = "2506597284";
  final String nama = "Aksara Putra Fachruddin";
  final String kelas = "PBP B";

  // Tombol-tombol untuk projek
  final List<ItemHomepage> projectItems = [
    ItemHomepage("Lihat Proyek", Icons.folder, Colors.amber[700]!),
    ItemHomepage("Tambah Proyek", Icons.add_circle, const Color.fromARGB(255, 30, 116, 222)),
    ItemHomepage("Hapus Proyek", Icons.delete, const Color.fromARGB(255, 210, 36, 36)),
  ];

  // Tombol-tombol untuk education
  final List<ItemHomepage> educationItems = [
    ItemHomepage("Lihat Education", Icons.folder, Colors.amber[700]!),
    ItemHomepage("Tambah Education", Icons.add_circle, const Color.fromARGB(255, 30, 116, 222)),
    ItemHomepage("Hapus Education", Icons.delete, const Color.fromARGB(255, 210, 36, 36)),
  ];
  
  // Tombol-tombol untuk skill
  final List<ItemHomepage> skillItems = [
    ItemHomepage("Lihat Skill", Icons.folder, Colors.amber[700]!),
    ItemHomepage("Tambah Skill", Icons.add_circle, const Color.fromARGB(255, 30, 116, 222)),
    ItemHomepage("Hapus Skill", Icons.delete, const Color.fromARGB(255, 210, 36, 36)),
  ];
  
  // Tombol-tombol untuk experience
  final List<ItemHomepage> experienceItems = [
    ItemHomepage("Lihat Experience", Icons.folder, Colors.amber[700]!),
    ItemHomepage("Tambah Experience", Icons.add_circle, const Color.fromARGB(255, 30, 116, 222)),
    ItemHomepage("Hapus Experience", Icons.delete, const Color.fromARGB(255, 210, 36, 36)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar menampilkan bagian atas dari tampilan app.
      appBar: AppBar(
        title: const Text(
          "My Portfolio",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),

      // Body halaman utama dengan padding di sekelilingnya.
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // pesan sambutan
              const Padding(
                      padding: EdgeInsets.fromLTRB(0, 16, 0, 30),
                      child: Text(
                        'Selamat datang di MyPortfolio Mobile!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                    ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 3.0
                      )
                    ),
                    child: Image.asset(
                            'assets/images/Foto Diri.png',
                            width: 150,
                            height: 150,
                          ),
                  ),

                  const SizedBox(height: 10.0),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InfoCard(title: 'NPM', content: npm),
                      InfoCard(title: 'Nama', content: nama),
                      InfoCard(title: 'Kelas', content: kelas),
                    ],
                  )
                ],
              ),

              const SizedBox(height: 20.0),

              // Bagian tengah: tombol-tombol menu portofolio.
              Center(
                child: Column(
                  children: [
                    Column(
                      children: [
                        // Judul section tombol-tombol
                        SectionTitle("Project"),

                        const SizedBox(height: 10.0),

                        // GridView menampilkan kartu tombol dalam tata letak kisi 3 kolom.
                        GridView.count(
                          primary: false,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 10,
                          crossAxisCount: 3,
                          // shrinkWrap agar ukuran kisi menyesuaikan tinggi konten anak.
                          shrinkWrap: true,
                          children: projectItems.map((ItemHomepage item) {
                            return ItemCard(item);
                          }).toList(),
                        ),
                      ],
                    ),
                    
                    Column(
                      children: [
                        // Judul section tombol-tombol
                        SectionTitle("Education"),

                        const SizedBox(height: 10.0),

                        // GridView menampilkan kartu tombol dalam tata letak kisi 3 kolom.
                        GridView.count(
                          primary: false,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 10,
                          crossAxisCount: 3,
                          // shrinkWrap agar ukuran kisi menyesuaikan tinggi konten anak.
                          shrinkWrap: true,
                          children: educationItems.map((ItemHomepage item) {
                            return ItemCard(item);
                          }).toList(),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        // Judul section tombol-tombol
                        SectionTitle("Skill"),

                        const SizedBox(height: 10.0),

                        // GridView menampilkan kartu tombol dalam tata letak kisi 3 kolom.
                        GridView.count(
                          primary: false,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 10,
                          crossAxisCount: 3,
                          // shrinkWrap agar ukuran kisi menyesuaikan tinggi konten anak.
                          shrinkWrap: true,
                          children: skillItems.map((ItemHomepage item) {
                            return ItemCard(item);
                          }).toList(),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        // Judul section tombol-tombol
                        SectionTitle("Experience"),

                        const SizedBox(height: 10.0),

                        // GridView menampilkan kartu tombol dalam tata letak kisi 3 kolom.
                        GridView.count(
                          primary: false,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 10,
                          crossAxisCount: 3,
                          // shrinkWrap agar ukuran kisi menyesuaikan tinggi konten anak.
                          shrinkWrap: true,
                          children: experienceItems.map((ItemHomepage item) {
                            return ItemCard(item);
                          }).toList(),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ],
          ),
        ) 
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  // Kartu informasi yang menampilkan judul (title) dan isi (content).
  final String title;
  final String content;

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      // Memberikan efek bayangan kartu elevasi 2 unit.
      elevation: 2.0,
      child: Container(
        // Menyesuaikan lebar kartu dengan proporsi layar (dibagi 3.5).
        width: MediaQuery.of(context).size.width / 1.25,
        padding: const EdgeInsets.all(16.0),
        // Menyusun teks title dan content secara vertikal.
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      // Menggunakan warna sekunder dari skema tema aplikasi.
      color: item.color,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        // Aksi ketika kartu ditekan oleh pengguna.
        onTap: () {
          // Menampilkan SnackBar dengan pesan interaktif.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  
  const SectionTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0
          ),
        ),

        Divider(
          color: const Color.fromARGB(255, 164, 164, 164),
          thickness: 3.0,
        )
      ],
    );
  }
}