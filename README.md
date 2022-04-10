# PRAKTIKUM PROBSTAT MODUL1 2022 KELAS D 

#### Nama    : Kurnia Cahya Febryanto
#### NRP     : 5025201073
#### Kelas   : Probabilitas dan Statistik D

</br>

## PENJELASAN 
### Nomor 1 
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan
seseorang yang menghadiri acara vaksinasi sebelumnya.
#### 1a
Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)
```
x = 3
p = 0.2
dgeom(x, p)
```
Maka hasilnya adalah : 
</br>
<img src="https://github.com/kurniacf/P1_Probstat_D_5025201073/blob/master/Screenshot/1A.jpg?raw=true">

#### 1b
mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
```
n = 10000
p = 0.20
x = mean(rgeom(n = 10000, p)==3)
x
```
Maka didapatkan jawaban yang berubah-ubah karena melakukan distribusi geometri secara acak, sehingga jawaban yg mungkin didapatkan:
</br>
<img src="https://github.com/kurniacf/P1_Probstat_D_5025201073/blob/master/Screenshot/1B.1.jpg?raw=true">
<img src="https://github.com/kurniacf/P1_Probstat_D_5025201073/blob/master/Screenshot/1B.2.jpg?raw=true">

#### 1c
Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
</br>
```
Perbedaan poin a dan b yaitu pada poin A dilakukan distribusi geometrik yang tetap sehingga mengakibatkan nilai peluang distribusi geometrik akan bernilai sama. Sedangkan, pada poin B dilakukan distribusi geometrik yang acak sehingga hasilnya akan berbeda-beda saat melakukan perhitungan.
```

#### 1d
Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama. 
</br>
Sesuai referensi : https://rpubs.com/mpfoley73/458721, maka langkah pertama adalah meng-install library yang berfungsi untuk membuat graphics(ggplot2) dan untuk memanipulasi data (dplyr)
```
install.packages("ggplot2")
install.packages("dplyr")
```
Setelah itu, menggunakan library seperti biasa
```
library(dplyr)
library(ggplot2)
```
Dilakukan inisialisasi
```
x=3
p=0.2
prob = dgeom(x = 0:5, p)
```
Menggunakan fungsi `mutate()` untuk menambahkan variabel baru yang merupakan fungsi dari variabel yang ada. Menggunakan fungsi `ggplot()` untuk membuat data graphics agar lebih interaktif
```
data.frame(x = 0:5, prob) %>% mutate(fail = ifelse(x == n, n, "lainnya")) %>%
ggplot(aes(x = factor(x), y = prob, fill = fail)) + 
  geom_col(colour = "black") + scale_fill_manual(values = c("#669933", "#FFCC66")) +
  geom_text(aes(label = round(prob, 2), y = prob - 0.01)) +
  labs(title = "Peluang X = 3 Gagal Sebelum Sukses Pertama",x = "Kegagalan sebelum kesuksesan pertama (x)", y = "Peluang") 
```
Maka hasil yang didapatkan adalah 
</br>
<img src="https://github.com/kurniacf/P1_Probstat_D_5025201073/blob/master/Screenshot/1D.jpg?raw=true">

#### 1e
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
- Mencari rara-rata menggunakan rumus `mean = n/p`
```
rataan = n/p
rataan
```
- Mencari varian menggunakan rumus `variance = (n - p) / (p^2)`
```
varian = (n - p) / ('^'(p, 2))
varian
```
Maka hasilnya adalah 
</br>
<img src="https://github.com/kurniacf/P1_Probstat_D_5025201073/blob/master/Screenshot/1E.jpg?raw=true">


</br>

### Nomor 2
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
#### 2a
Peluang terdapat 4 pasien yang sembuh. 
- Maka menggunakan distribusi binomial
```
dbinom(x = 4, size = 20, prob = 0.2)
```
Maka hasilnya adalah
</br>
<img src="https://github.com/kurniacf/P1_Probstat_D_5025201073/blob/master/Screenshot/2A.jpg?raw=true">

#### 2b
Gambarkan grafik histogram berdasarkan kasus tersebut.
Inisialiasi
```
x <- 3
p <- 0.2
prob <- dbinom(x = 0:10, size = 20, prob = 0.2)
```
Menggunakan fungsi `mutate()` untuk menambahkan variabel baru yang merupakan fungsi dari variabel yang ada. Menggunakan fungsi `ggplot()` untuk membuat data graphics agar lebih interaktif
```
library(dplyr)
library(ggplot2)

data.frame(heads = 0:10, prob) %>%
  mutate(Heads = ifelse(heads == 4, "4", "lainnya")) %>%
  ggplot(aes(x = factor(heads), y = prob, fill = Heads)) +
  geom_col(colour = "black") +
  scale_fill_manual(values = c("#669933", "#FFCC66")) +
  geom_text(aes(label = round(prob, 2), y = prob + 0.01)) +
  labs(title = "Peluang jika X = 4 pasien sembuh.", x = "Sukses (x)", y = "Peluang") 
```
Maka hasilnya adalah
</br>
<img src="https://github.com/kurniacf/P1_Probstat_D_5025201073/blob/master/Screenshot/2B.jpg?raw=true">
#### 2c
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.
- Mencari rara-rata menggunakan rumus `mean = n * p`
```
rataan <- n * p
rataan
```
- Mencari varian menggunakan rumus `variance = n * p * (1 - p)`
```
varian <- n * p * (1 - p)
varian
```
Maka hasilnya adalah
</br>
<img src="https://github.com/kurniacf/P1_Probstat_D_5025201073/blob/master/Screenshot/2C.jpg?raw=true">

### Nomor 3
Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis
4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
#### 3a
Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?

Menggunakan peluang distribusi poisson maka
```
dpois(6, 4.5)
```
Sehingga didapatkan
</br>
<img src="https://github.com/kurniacf/P1_Probstat_D_5025201073/blob/master/Screenshot/3A.jpg?raw=true">
#### 3b
Menggunakan `geom_histogram` untuk menampilkan histogramnya

```
set.seed(2)
babies <- data.frame('data' = rpois(365, 4.5))

babies %>% ggplot() +
  geom_histogram(aes(x = data, y = stat(count / sum(count)), fill = data == 6), binwidth = 1, color = 'black',) +
  scale_fill_manual(values = c("#FFCC66", "#669933")) +
  scale_x_continuous(breaks = 0:10) +
  labs(x = 'Jumlah bayi lahir per periode', y = 'Proporsi', title = 'Simulasi kelahiran selama setahun (n=365) di rumah sakit') +
  theme_bw()
```
Sehingga histogramnya adalah
</br>
<img src="https://github.com/kurniacf/P1_Probstat_D_5025201073/blob/master/Screenshot/3B.jpg?raw=true">

#### 3c
kesimpulan yang didapatkan
```
Perbandingan poin a dan poin b kurang lebih sama karena nilai proporsi yang didapatkan di poin A 
berada dalam range proporsi yang ada di poin B yaitu 0.10-0.15. Oleh karena itu, pengaruh perhitungan 
dengan estimasi selama 365 hari memberikan hasil yang mendekati dengan peluang bayi akan dilahirkan keesokan harinya
```

#### 3d
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.
- Mencari rara-rata menggunakan rumus `mean = lamda`
```
rataan <- l
rataan
```
- Mencari varian menggunakan rumus `variance = lamda`
```
varian <- l 
varian
```
Maka hasilnya adalah
</br>
<img src="https://github.com/kurniacf/P1_Probstat_D_5025201073/blob/master/Screenshot/3D.jpg?raw=true">

