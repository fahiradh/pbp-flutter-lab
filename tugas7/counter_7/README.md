#### Fahira Adindiah (2106751575)

### :bulb: Tugas 7 :bulb:
## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Stateless widget adalah widget yang statenya tidak bisa diubah ketika sudah dibuat. Dengan kata lain, widget bersifat statis dan seluruh konfigurasi di dalamnya telah diinisiasi sejak awal. Sementara itu, Stateful widget adalah widget yang statenya bisa diubah ketika widget sudah dibuat. Stateful widget bersifat dinamus dan bisa diatur kapanpun dibutuhkan berdasarkan user actions atau ketika ada perubahan data. 

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
* Row: membuat element dalam 1 row
* Text: menampilkan teks
* FloatingActionButton: membuat button yang berada di index paling dengan dengan surface
* Padding: mengatur ukuran elemen
* Center: mengatur elemen di posisi tengah

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() berfungsi untuk memberitahu framework bahwa terjadi perubahan state pada objek tersebut. Kemudian, framework akan merender ulang UI aplikasi dan menampilkan perubahan akibat pemanggilan setState(). Variable yang terdampak adalah variable/data yang dipass sebagai argumeen pada inner function setState.

## Jelaskan perbedaan antara const dengan final.
Const dapat digunakan untuk deklarasi variabel immutable yang nilainya bersifat konstan dan harus sudah diketahui pada saat waktu kompilasi berjalan, artinya adalah nilai dari variabel tersebut harus sudah di berikan value secara langsung. Sementara itu, final harus diinialisasi pada saat pertama kali digunakan dan hanya di-setting sekali. Dengan kata lain nilai final akan diketahui pada saat run-time. Perbedaan utama ada pada inialisasi nilai (pemberian nilai) dari variabelnya, const mengharuskan variabel harus dinialisasi pada saat kompilasi, nilai bersifat konstan dan secara langsung / eksplisit sehingga pada saat kompilasi variabel const sudah memiliki nilai, sedangkan final tidak mengharuskan variabel memiliki nilai secara langsung / eskplisit pada saat kompilasi.</br>
(taken from https://belajarflutter.com/)

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat app flutter dengan `flutter creat counter_7`</br>
2. Mengedit main.dart</br>
Pada file main.dart, saya membuat method _decrementCounter() untuk mengatur nilai `_counter` setelah widget - diklik. Isi dari method itu adalah `setState()` dan decrement `_counter`. Kemudian, saya menambahkan widget GANJIL dan GENAP sesuai permintaan soal. Agar widget - hanya muncul ketika nilai `_counter` > 0, maka saya menggunakan conditionals `if (_counter > 0)` untuk widget -.</br>
3. Melakukan `git add counter_7`, `git commit -m "tugas 7"`, dan `git push -u origin main`.

### :bulb: Tugas 8 :bulb:
## Jelaskan perbedaan `Navigator.push` dan `Navigator.pushReplacement`.
`Navugator.push` akan menambahakn satu halaman ke top of stack Navigator, sedangkan `Navigator.pushReplacement` menggantikan halaman saat ini ke halaman baru dan user tidak bisa kembali ke halaman sebelumnya.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
* Form: widget untuk membuat form
* ListTile: widget berbentuk list
* Container: widget untuk menampung widget-widget lain
* Drawer: widget untuk membuat drawe 
* Column: widget untuk menampung widget-widget lain secara vertikal

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed)
onPressed, onTap, onChanged, onSaved

## Jelaskan bagaimana cara kerja `Navigator` dalam "mengganti" halaman dari aplikasi Flutter.
Navigator yang berbentuk stack akan menampilkan halaman pada top of stack-nya dengan push/pushReplacement. Selanjutnya, halaman yang ditampilkan akan berubah ke halaman baru. Setelah halaman dibuka, maka halaman akan di-pop dan top of stack menjadi halaman di bawah halaman yang ditampilkan saat ini.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
Pertama, saya membuat drawer untuk ketiga aplikasi, yaitu counter_7, tambah budget, dan data budget. Selanjutnya, membuat model budget (budget.dart) dan satu per satu mulai membuat halaman untuk menampilkan tambah budget dan data budget.

### :bulb: Tugas 9 :bulb:
## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Pengambilan data JSON tanpa membuat model bisa dilakukan. Hal ini karena JSON dalam bahasa Dart ekuivalen dengan Map, yaitu terdiri dari key dan value. Akan tetapi, pengambilan data JSON tanpa model akan memungkinkan terjadinya kesalahan dalam pengambilan data melalui http request.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
Widget yang saya gunakan untuk menyelesaikan tugas 9 kurang lebih sama seperti widget yang saya gunakan untuk menyelesaikan tugas 7 & 8. Namun, ada beberapa widget baru yang saya gunakan khusus untuk tugas 9.
* FutureBuilder: widget untuk membuat widget berdasarkan pada snapshot terakhir yang berkaitan dengan Future
* ListView: widget berbentuk list
* SizedBox: widget untuk menampilkan box dengan ukuran tertentu
* BoxShadow: widget untuk memberi kesan shadow pada box

## Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
Pertama, function http request dengan method GET akan mengambil data secara asynchronous. Setelah data diambil, akan dilakukan parsing pada function dengan `jsonDecode()`. Tujuan parsing adalah untuk mengubah response dari type Strinf menjadi JSON. Data JSON yang telah dimiliki akan dikonversi sesuai model object-nya. Hasil konservi akan ditampilkan menjadi sebuah object dengan widget `FutureBuilder`.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
Saya banyak mengikuti langkah-langkah pada tutorial 8 kemarin. Pertama, saya menambahkan dependency http ke proyek. Saya membuat 2 folder bar yaitu modal dan page. Semua file selain `main.dart` saya pindahkan ke dalam folder page. Selanjutnya, saya mengonversi JSON dari `https://katalog-barang.herokuapp.com/mywatchlist/json` ke bahasa dart dengan bantuan website eksternal. Sebelumnya, saya telah membuat file baru di dalam folder modal bernama `mywatchlist.dart`. Hasil konversi menjadi bahasa dart saya copy-paste ke file `mywatchlist.dart`.

Saya membuat file baru di dalam folder page `my_watchlist_page.dart` dan `detail.dart`. FIle pertama digunakan untuk menambilkan watchlist dalam bentuk list, file kedua untuk memampilkan detail dari film dalam watchlist. Kemudian, saya membuat folder baru queries dan membuat file `fetch_data.dart` untuk mengambil data-data dari JSON pada `https://katalog-barang.herokuapp.com/mywatchlist/json`. Setelah semua selesai, saya menambahkan `ListTile` watchlist pada `drawer.dart`. Pengerjaan tugas 9 saya akhiri dengan `git add`, `git commit`, dan `git push` ke repositori.