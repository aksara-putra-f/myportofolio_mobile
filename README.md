# Identitas Diri

**Nama  :** Aksara Putra Fachruddin

**NPM   :** 2506597284

**Kelas :** PBP B

# Progress Mingguan

- **Sabtu, 14 November 2026**
    - Mengubah warna tombol 'Lihat', 'Tambah', dan 'Logout'
    - Menambahkan foto diri dan mengatur layout informasi diri (Nama, Npm, Kelas, dan foto diri)

- **Minggu, 15 November 2026**
    - Membuat tombol 'Lihat', 'Tambah', dan 'Hapus' untuk Education, Skill, dan Experience

- **Senin, 16 November 2026**
    - Membuat tombol Logout

# Log Penggunaan AI
Belum ada log

# Refleksi Mandiri

### Tugas 1
1. Widget tree adalah representasi logis dari susunan widget yang digunakan dalam membangun UI. Sesuai namanya, antara satu widget dengan widget lainnya dapat disusun secara hierarkis sehingga dapat membentuk sebuah pohon widget. Hubungan antara parent dengan child dalam kasus ini adalah parent dibangun dari susunan hierarkis child-childnya (atau suatu widget dapat disusun dari satu atau beberapa widget lain).

2. Widget-widget yang digunakan: 
    - Scaffold     
      Widget yang membuat struktur layout dasar.
    
    - AppBar   
      Widget yang berada di sisi atas layar, umumnya dapat berisi judul dari app.
      
    - Column   
      Widget untuk menyusun child-child nya secara vertikal.

    - Padding   
      Widget yang memberikan padding untuk child-nya.

    - Container   
      Widget yang berperan sebagai wadah.

    - Divider   
      Widget yang membuat garis pembatas.

    - Text   
      Widget untuk menampilkan teks.

    - Row   
      Widget untuk menyusun child-child nya secara horizontal.

    - Center   
      Widget yang untuk membuat child-childnya tersusun sejajar di tengah-tengah.

    - Icon   
      Widget untuk membuat ikon.

3. MaterialApp adalah widget yang membungkus satu app secara keseluruhan dan berfungsi sebagai konfiguarasi utama aplikasi, seperti tema aplikasi (warna, font, tampilan komponen UI), mengatur judul aplikasi, menentuka halaman navigasi awal, dan lain-lain. Selain itu, MaterialApp akan membuat app mengikuti gaya Material Design (desain antarmuka dari Google). MaterialApp umumnya digunakan dalam root (class widget yang menjadi parameter pada runApp() pada main()) karena tugasnya sebagai konfigurasi utama dari aplikasi kita. Selain itu, widget-widget pada flutter akan mewarisi atributnya ke child-childnya. Dengan begitu, konfigurasi pada MaterialApp juga dapat digunakan oleh child-childnya.

4. StatelessWidget adalah widget yang tampilannya tidak akan berubah di sepanjang aplikasi berjalan sejak widget tersebut di-render untuk pertama kalinya. Jika ada event atau input dari user, tampilan widget tersebut akan tetap sama. Lalu, StatefullWidget adalah widget yang tampilannya dapat berubah. StatelessWidget digunakan jika kita memang ingin tampilan widget tersebut tetap sama selama aplikasi berjalan, sedangkan StatefullWidget digunakan jika kita ingin menambahkan interaktivitas pada widget tersebut ketika ada event atau input dari user terhadap widget tersebut, contohnya adalah counter. Widget text pada counter harus berubah ketika user misalkan menekan tombol "+" atau "-".

5. BuildContext penting dalam Flutter karena memungkinkan widget untuk mengetahui posisinya dalam widget tree. BuildContext memungkinkan suatu widget untuk mengakses informasi pada widget-widget yang berada di atasnya. Pada method pembangun widget, seperti build(), BuildContext digunakan dengan cara memasukkannya sebagai parameter function tersebut. Lalu, widget dapat mengakses BuildContext melalui parameter tersebut.

6. Hot reload pada flutter memungkinkan pengembang untuk me-reload aplikasi tanpa me-reset state dari app tersebut. Hot reload cocok jika kita ingin melihat hasil perubahan UI tanpa ingin me-reset state dari app. Lalu, hot restart juga melakukan reload app dan menampilkan hasil perubahan UI, tetapi state dari aplikasi juga akan ter-reset. Gunakan hot reload ketika perubahan hanya berkaitan dengan UI (perubahan terjadi di dalam function build() saja). Gunakan hot restart ketika perubahan juga terjadi di luar function build, misalnya ada perubahan logika kode, variabel, dan lain-lain. Gunakan full restart jika diperlukan kompilasi ulang, misalnya jika ada perubahan depedensi pada app kita.

### Tugas 2
1. Navigator.push(): Meletakkan page tujuan pada stack page paling atas.
   Navigator.pushReplacement(): Mengganti page pada tumpukan stack page paling atas dengan page tujuan.
   Navigator.pop(): Menghapus page paling atas dari tumpukan stack page.

   Baik navigator.push() maupun navigator.pushReplacement() bertujuan untuk pindah ke page baru, sedangka navigator.pop() bertujuan untuk kembali ke page sebelumnya yang telah dikunjungi.

   Pada kartu aksi "membuat form" pada halaman menu.dart, metode navigator yang digunakan adalah navigator.push(). Lalu, untuk kembali ke halaman menu.dart dari page form, jika melalui tombol aksi pada menu, user cukup menekan tombol back pada devicenya, navigator yang digunakan adalah navigator.pop(). Namun, jika untuk ke form page user melalui drawer, user tidak bisa kembali ke menu dengan menekan back pada device karena navigator yang digunakan untuk berpindah dari menu ke form page adalah navigator.pushReplacement().

2. Scaffold adalah widget yang menyediakan kerangka dasar dari sebuah page. Dua atribut yang dimiliki   
   widget Scaffold adalah appbar dan drawer. Appbar diisi oleh class widget AppBar(), sedangkan atribut drawer diisi oleh class widget Drawer().
   Penggunaan tema yang didefinisikan pada konfigurasi app melalui MaterialApp dapat digunakan oleh widget-widget di dalamnya melalui ```context```. Cara menggunakannya adalah dengan menulis ```Theme.of(context).colorScheme.secondary``` sebagai atribut warna dari sebuah widget.
   Contoh:
   ```dart
   Widget build(BuildContext context) {
    return Material(
      // Menggunakan warna sekunder dari skema tema aplikasi.
      color: Theme.of(context).colorScheme.secondary,
      borderRadius: BorderRadius.circular(12),
      ...
   ```

3. Form menggunakan layouting Column karena pada umumnya (pada kebanyakan kasus form) field-field form 
   disusun secara berurutan dari atas ke bawah. Dalam membuat susunan field form, kita dapat menyisipkan widget pengatur jarak antarfield, misalnya menggunakan padding atau sizedbox. Tujuannya agar setiap field tidak terlihat menempel satu sama lain sehingga user dapat melihat field demi field dengan lebih nyaman (user dapat melihat bahwa ada beberapa field terpisah pada form tersebut). 
   Salah satu permasalahan dalam menggunakan widget Column() adalah ketika isi dari column melebihi layar. Widget Column() tidak membawa scroll bawaan. Maka dari itu, kita menggunakan widget SingleChildScrollView() (widget penggulir) agar kita dapat melakukan scroll ketika content di dalam Column() melebihi layar.

4. GlobalKey&lt;FormState&gt; digunakan sebagai key dari form sehingga widget lain pada tree dapat   
   mengakses status internal dari widget Form melalui key tersebut. Validator adalah atribute pada widget field form, berfungsi untuk mendefinisikan bagaimana isian pada field tersebut divalidasi. Validate() berfungsi untuk mengecek apakah form valid atau tidak, hasilnya didasarkan pada hasil validasi setiap field sesuai dengan definisi yang ditulis sebagai atribut validasi tiap field.
   Apakah isian field diterima atau ditolak tergantung pada nilai yang dimasukkan dan pendefinisian validasi untuk field tersebut. Misalnya suatu field mengharuskan nilai input tidak boleh berupa string kosong. Maka, jika user memasukkan input kosong atau string berupa whitespace, isian field tidak akan diterima.   
   Alasan memilih jenis input saja tidak cukup adalah hal tersebut tidak menjadim input user sudah sesuai. Jenis input menjamin input user mengikuti format tertentu, tetapi tidak menjamin bahwa nilai/value yang dimasukkan user telah sesuai dengan ketentuan app.