# Install Packages (Cukup 1 Kali)
install.packages(c("rtweet", "tidyverse"))

# Load Packages
library(rtweet)
library(tidyverse)

# Set Token (Dari Halaman Twiiter API)
token <- create_token(
  app = "novasi",
  consumer_key = "PmEYW7dY70bTE3FyxV9MZf90p",
  consumer_secret = "88GZGsACvpS5cR6It3GKFPcvISoZmO3kxeBHeebWh9be6DLon0",
  access_token = "1287228277560467456-xrzxcHuMuD4b1IgfDozJyKFAVHhXxw",
  access_secret = "NsQ3VAb1yfY24IHXDot5E9E9pdYhUeVOk6onDYT6JkiLR"
)

# Tentukan Nama Akun (Tidak perlu menggunakan @) dan Jumlah Tweet
akun <- "jokowi"
jumlah <- 100

# Proses Pengumpulan Data Following
following <- get_friends(akun, n = jumlah)

# Mengambil Infomasi Data Following
following_info <- lookup_users(following$user_id)

# Simpan Data Following dalam format .csv
write_as_csv(following_info,
  file_name = "data/csv/following.csv"
)
