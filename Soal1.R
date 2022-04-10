# Soal 1a
# Mencari berapa peluang penyurvei bertemu orang yang tidak vaksin dari populasi menggunakan distribusi Geometrik
# diket di soal x=3, p=0.2
# Menggunakan `dgeom` untuk mengembalikan nilai fungsi probabilitas geometrik
x <- 3
p <- 0.2
dgeom(x, p)


# Soal 1b
# Diketahui n = 10000, prob = 0.20, dan distribusi geometrik acak(rgeom) X = 3 
n <- 10000
p <- 0.20
x <- mean(rgeom(n = 10000, p) == 3)
x

# Soal 1c
# Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
# Perbedaan poin a dan b yaitu pada poin A dilakukan distribusi geometrik yang tetap sehingga mengakibatkan nilai peluang distribusi geometrik
# akan bernilai sama. Sedangkan, pada poin B dilakukan distribusi geometrik yang acak sehingga hasilnya akan berbeda-beda saat melakukan perhitungan.

# Soal 1d
# Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
# Sesuai referensi : https://rpubs.com/mpfoley73/458721, maka
# Hal pertama yang dilakukan yaitu meng-install library `ggplot2` dan `dplyr`

install.packages("ggplot2")
install.packages("dplyr")

# Setelah itu dilakukan pembuatan history diagram
library(dplyr)
library(ggplot2)

# Inisialisasi
x <- 3
p <- 0.2
prob <- dgeom(x = 0:5, p)

# %>% digunakan untuk memberikan nilai operator sehingga menjadi format X > Y > Z
data.frame(x = 0:5, prob) %>% mutate(fail = ifelse(x == n, n, "lainnya")) %>%
ggplot(aes(x = factor(x), y = prob, fill = fail)) +
  geom_col(colour = "black") +
  scale_fill_manual(values = c("#669933", "#FFCC66")) +
  geom_text(aes(label = round(prob, 2), y = prob - 0.01)) +
  labs(title = "Peluang X = 3 Gagal Sebelum Sukses Pertama", x = "Kegagalan sebelum kesuksesan pertama (x)", y = "Peluang") 

#Soal 1e
# Inisialiasi
n <- 3
p <- 0.2
# Mencari nilai rata-rata
rataan <- n / p
rataan
# Mencari nilai varian
varian <- (n - p) / ("^" (p, 2))
varian
