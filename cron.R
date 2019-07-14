library(cronR)

cmd <- cron_rscript("speedtest.R")
cron_add(command = cmd, frequency = "minutely", id = "speedtest")
