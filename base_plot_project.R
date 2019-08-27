# cleaning global env. and garbage collection:
rm(list = ls()); gc()

# loading packages:
library(tidyverse)

# Assign the time zone (just in case)
Sys.setenv(TZ = "UTC")
Sys.setlocale("LC_ALL","English")

# setting working directory:
setwd("Desktop/Exploratory Data Analysis/")

# downloading dataset:
url <- paste0("https://d396qusza40orc.",
              "cloudfront.net/exdata%2Fdata%2F",
              "household_power_consumption.zip")

download.file(url, "hhpower.zip")

# reading data:
data <- read_delim("hhpower.zip",
                   delim = ";",
                   na = "?") %>%
        filter(Date %in% c("1/2/2007", "2/2/2007")) %>%
        mutate(datetime = as.POSIXct(paste(Date, Time),
                                     format = "%d/%m/%Y %H:%M:%S")) %>%
        select(-Date, -Time)

# producing plots:
source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")
