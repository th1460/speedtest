library(DBI)
library(dplyr, warn.conflicts = FALSE)
library(ggplot2)
library(devout)

canal <- dbConnect(RPostgreSQL::PostgreSQL(),
                   dbname = "speedtest",
                   user = "pi",
                   password = "raspberry")

ascii(width = 70)

tbl(canal, "download") %>%
    as_tibble %>%
    ggplot() +
    aes(date, median) +
    geom_line() +
    theme_minimal()

invisible(dev.off())
