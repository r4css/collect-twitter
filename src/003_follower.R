# Install Packages (Cukup 1 Kali)
install.packages(c("rtweet", "tidyverse"))

# Load Packages
library(rtweet)
library(tidyverse)

# Set Token (Dari Halaman Twiiter API)
token <- create_token(
  app = "----",
  consumer_key = "---",
  consumer_secret = "---",
  access_token = "---",
  access_secret = "---"
)

# Tentukan Nama Akun (Tidak perlu menggunakan @) dan Jumlah Tweet
akun <- "jokowi"
jumlah <- 100

# Proses Pengumpulan Data Follower
follower <- get_followers(akun, n = jumlah)

# Mengambil Infomasi Data Follower
follower_info <- lookup_users(follower$user_id)

# Simpan Data Follower dalam format .csv
write_as_csv(follower_info,
  file_name = "data/csv/follower.csv"
)
