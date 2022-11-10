### Fahira Adindiah (2106751575)

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
