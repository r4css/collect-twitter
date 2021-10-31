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

# Tentukan Kata Kunci dan Rentang Waktu Streming (Dalam Detik)
keyword <- "gojek"
rentang_waktu <- 60


# Proses Streaming Data Tweet dalam 60 Detik
stream_tweets(keyword,
  timeout = rentang_waktu,
  file_name = "data/streaming.json",
  parse = FALSE
)

# Parsing hasil streaming
streaming <- parse_stream("data/streaming.json")

# Simpan Data Tweet dalam format .csv
write_as_csv(streaming,
  file_name = "data/csv/tweet-streaming.csv"
)

# Simpan Data Tweet dalam format .rds
write_rds(streaming,
  file = "data/rds/tweet-streaming.rds"
)
