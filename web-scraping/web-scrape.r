library(tidyverse)
library(jsonlite)
library(Rcurl)

base_url <- "https://www.ncei.noaa.gov/access/services/data/v1"
data_set <- "?dataset=daily-summaries"
station_id <- "&stations=USW00094728"
start_date <- "&startDate=2010-01-01"
end_date <- "&endDate=2019-09-30"
data_type <- "&dataTypes=TMAX,TMIN,PRCP,SNOW,AWND"
units <- "&units=standard"

url <- paste0(base_url,data_set,station_id,start_date,end_date,data_type,units)

weather_data <- read_csv(url)
write_csv(weather_data, "./data/weather-data.csv")

