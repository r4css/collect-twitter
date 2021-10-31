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

# Tentukan Nama Akun (Tidak perlu menggunakan @), Jumlah Tweet, dan Parameter Lainnya
akun <- "gojekindonesia"
jumlahtweet <- 100
retweet <- FALSE

# Proses Pengumpulan Data Tweet
tweet_timeline <- get_timelines(akun,
  n = jumlahtweet,
  home = retweet
)

# Simpan Data Tweet dalam format .csv
write_as_csv(tweet_timeline,
  file_name = "data/csv/tweet-timeline.csv"
)

# Simpan Data Tweet dalam format .rds
write_rds(tweet_timeline,
  file = "data/rds/tweet-timeline.rds"
)
