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