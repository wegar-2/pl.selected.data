# library(lubridate)
# library(dplyr)
# library(data.table)
# library(magrittr)
# library(zoo)
# library(usethis)
# library(devtools)
#
#
# cDataPath <- file.path(getwd(), "R")
# cCsvFiles <- dir(path = cDataPath) %>% sort.default()
#
#
#
# # 1. monthly data --------------------------------------------------------------
# dtMonthlyMacroData <- read.csv(file = file.path(cDataPath, "final_monthly_macro_data.csv"),
#                                 sep = ",", dec = ".", quote = '"', na.strings = ".",
#                                 stringsAsFactors = FALSE) %>% data.table::as.data.table()
# dtMonthlyMacroData$month <- zoo::as.yearmon(x = dtMonthlyMacroData$month,
#                                             format = "%m/%Y")
#
#
#
# # 2. quarterly data ------------------------------------------------------------
# dtQuarterlyMacroData <- read.csv(file = file.path(cDataPath, "final_quarterly_macro_data.csv"),
#                                sep = ",", dec = ".", quote = '"', na.strings = ".",
#                                stringsAsFactors = FALSE) %>% data.table::as.data.table()
# dtQuarterlyMacroData$quarter <- zoo::as.yearqtr(x = dtQuarterlyMacroData$quarter,
#                                                 format = "Q%qY%Y")
#
#
# # 3. save the datasets as package datasets -------------------------------------
# usethis::use_data(dtMonthlyMacroData, internal = FALSE, overwrite = TRUE)
# usethis::use_data(dtQuarterlyMacroData, internal = FALSE, overwrite = TRUE)
