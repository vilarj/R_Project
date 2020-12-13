# Importing the excel file
library(readxl)
Computer_Stats <- read_excel("C:/Users/Vilarj/Desktop/Computer_Stats.xlsx")


View(Computer_Stats)
class(Computer_Stats)

# Getting rid of the 1 and 2 second columns
Computer_Stats <- Computer_Stats[c(-1, -2),]
Computer_Stats <- Computer_Stats[,c(-3,-4)]

# Changing the data type
colnames(Computer_Stats) <- c("M AC", "M PP", "Daily AC", "Daily PP")
Computer_Stats <- data.frame(Computer_Stats)
M_AC <- as.numeric(Computer_Stats$M.AC)
M_PP <- as.numeric(Computer_Stats$M.PP)
Daily_AC <- as.numeric(Computer_Stats$Daily.AC)
Daily_PP <- as.numeric(Computer_Stats$Daily.PP)
View(Computer_Stats)

# Creating a mode function
getMode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

# Daily AC 2017
mean(Daily_AC)
median(Daily_AC)
getMode(Daily_AC)
sd(Daily_AC)

# Daily PP 2017
mean(Daily_PP)
median(Daily_PP)
getMode(Daily_PP)
sd(Daily_PP)




