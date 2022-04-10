# Soal 6a
# Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan
# Fungsi Probabilitas dari Distribusi Normal P(X1 ??? x ??? X2), hitung Z-Score Nya dan plot
# data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
# Keterangan :
# X1 = Dibawah rata-rata
# X2 = Diatas rata-rata
# Contoh data :
# 11
# 1,2,4,2,6,3,10,11,5,3,6,8
# rata-rata = 5.083333
# X1 = 5
# X2 = 6

mean <- 50
sd <- 8
n <- 100
z <- rnorm(n, mean, sd)
z

plot(z)

# 6B
# Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan:
# NRP_Nama_Probstat_{Nama Kelas}_DNhistogram

hist(z, breaks = 50, main="5025201073_Kurnia Cahya Febryanto_D_DNhistogram")

# 6C
# Nilai Varian ( ) dari hasil generate random nilai ??² Distribusi Normal.
# Mencari nilai varian
sd <- 8
varian <- sd * sd
varian