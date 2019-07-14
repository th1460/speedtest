library(speedtest)
library(dplyr)
library(DBI)

# canal

canal <- dbConnect(RPostgreSQL::PostgreSQL(),
		   dbname = "speedtest",
		   user = "pi",
		   password = "raspberry")

# config

config <- spd_config()

servers <- spd_servers(config = config)
closest_servers <- spd_closest_servers(servers, config = config)
only_the_best_servers <- spd_best_servers(closest_servers, config)

# download

spd_download_test(only_the_best_servers, config = config) %>%
    bind_cols(date = Sys.time()) %>%
	dbWriteTable(canal, "download", value = ., append = TRUE)
	
# upload

spd_upload_test(only_the_best_servers, config = config) %>%
	bind_cols(date = Sys.time()) %>%
	dbWriteTable(canal, "upload", value = ., append = TRUE)

dbDisconnect(canal)
