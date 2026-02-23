Nama: Dinda Aulia Rizky

NIM: 2409116076

Kelas: B'24

# Shopping Cart Hands-On

Dalam proyek ini, Mini E-Commerce Shopping Cart diciptakan dengan menggunakan Provider sebagai cara untuk mengelola status pada Flutter. Aplikasi ini memiliki fitur utama seperti kemampuan untuk menambahkan barang ke keranjang langsung dari daftar produk, menunjukkan item dalam keranjang beserta jumlahnya, melakukan pembaruan jumlah produk dengan menambah atau mengurangi, menghapus barang dari keranjang, serta menghitung total harga dengan cara yang otomatis dan akurat.

Di samping fitur dasar keranjang belanja, aplikasi ini juga menyuguhkan kemampuan untuk mencari produk berdasarkan nama, melakukan penyaringan berdasarkan kategori, serta menyediakan halaman checkout yang menampilkan ringkasan pesanan beserta formulir informasi pelanggan. Penerapan Provider memberikan kesempatan untuk memisahkan logika bisnis dari antarmuka, membuat pengelolaan status menjadi lebih teratur, efisien, dan mudah untuk pengembangan lebih lanjut di tingkat yang lebih kompleks.

Proyek ini bertujuan untuk menerapkan prinsip manajemen status dalam cara yang praktis, sekaligus membangun dasar arsitektur aplikasi e-commerce yang terorganisir dengan baik. 

Pada bagian berikut, ditampilkan dokumentasi lengkap mengenai fitur-fitur yang diimplementasikan dalam aplikasi ini.

# ***Tampilan UI***

1. List Product

   <img width="623" height="837" alt="image" src="https://github.com/user-attachments/assets/a1bcb5e3-c485-4d42-9553-dc30dfdb1bbd" />

3. Halaman Check Out

    <img width="619" height="846" alt="image" src="https://github.com/user-attachments/assets/45ffadcc-f147-4289-ba16-849b897a9cc0" />

# ***Fitur Utama***

## 1. Menambahkan produk ke keranjang dari daftar produk

Pengguna dapat memilih produk yang diinginkan dan langsung memasukkannya ke dalam keranjang belanja melalui tombol “+” di sudut kanan bawah.

<img width="275" height="411" alt="Screenshot 2026-02-23 223646" src="https://github.com/user-attachments/assets/9b5c8e8d-9cdd-4a5b-bf32-4a3024d35e9a" />

## 2. Menampilkan item dalam keranjang beserta jumlah (quantity)

Aplikasi menampilkan daftar produk yang telah dipilih lengkap dengan jumlah masing-masing item yang dimasukkan ke keranjang.

<img width="626" height="836" alt="image" src="https://github.com/user-attachments/assets/83ede3fc-78f2-40c6-b92a-d77f161c89ef" />

## 3. Memperbarui jumlah produk di keranjang (tambah/kurang)

Pengguna dapat menambah atau mengurangi jumlah produk menggunakan tombol (+) atau (−) tanpa harus menghapus dan menambahkan ulang produk.

<img width="586" height="87" alt="image" src="https://github.com/user-attachments/assets/39b584a3-d35b-4795-a245-e1e87d6bdbc8" />

## 4. Menghapus produk dari keranjang

Pengguna dapat menghapus item tertentu dari keranjang jika tidak ingin melanjutkan pembelian produk tersebut.

<img width="586" height="87" alt="Screenshot 2026-02-23 230106" src="https://github.com/user-attachments/assets/30002d29-c340-427c-92f6-95ed532d2281" />

## 5. Menampilkan total harga secara akurat

Sistem secara otomatis menghitung dan memperbarui total harga berdasarkan jumlah dan jenis produk yang ada di keranjang.

<img width="596" height="765" alt="Screenshot 2026-02-23 230406" src="https://github.com/user-attachments/assets/8fdf0430-70b0-4bf1-9bf1-d355554a7312" />

## 6. Pencarian produk berdasarkan nama

Fitur ini memungkinkan pengguna mencari produk tertentu dengan mengetikkan nama produk pada kolom pencarian.

<img width="380" height="601" alt="image" src="https://github.com/user-attachments/assets/fa835293-e6bd-411f-9aab-60097d28ac5d" />

## 7. Filter produk berdasarkan kategori

Pengguna dapat menyaring produk sesuai kategori tertentu agar lebih mudah menemukan produk yang diinginkan.

<img width="620" height="689" alt="image" src="https://github.com/user-attachments/assets/eded379c-ce02-4263-a195-0a97a3d85b98" />

## 8. Halaman checkout (ringkasan pesanan dan formulir pemesanan)

Menampilkan detail akhir pesanan, termasuk daftar produk dan total harga, serta menyediakan formulir untuk mengisi data pemesan sebelum transaksi diproses.

<img width="489" height="295" alt="image" src="https://github.com/user-attachments/assets/eeb61c54-b18c-47e4-82eb-9cfe7c0cdecf" />

