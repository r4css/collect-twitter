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
akun <- "jokowi" # Tanpa menggunkana @
jumlahtweet <- 100

# Proses Pengumpulan Data Tweet Favorit
favorite <- get_favorites(akun,
  n = jumlahtweet
)

# Simpan Data Tweet Favorit dalam format .csv
write_as_csv(favorite,
  file_name = "data/csv/tweet-favorite.csv"
)
