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

# Tentukan Kata Kunci, Jumlah Tweet, dan Parameter Lainnya
keyword <- "Gojek"
jumlahtweet <- 100
bahasa <- "id"
retweet <- TRUE

# Proses Pengumpulan Data Tweet
tweet_keyword <- search_tweets(keyword,
  n = jumlahtweet,
  include_rts = retweet,
  lang = bahasa
)

# Simpan Data Tweet dalam format .csv
write_as_csv(tweet_keyword,
  file_name = "data/csv/tweet-keyword.csv"
)

# Simpan Data Tweet dalam format .rds
write_rds(tweet_keyword,
  file = "data/rds/tweet-keyword.rds"
)
