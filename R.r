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
getMode <- function(vector) {
  uniqv <- unique(vector)
  uniqv[which.max(tabulate(match(vector, uniqv)))]
}

# (A) Daily AC 2017
mean(Daily_AC)
median(Daily_AC)
getMode(Daily_AC)
sd(Daily_AC)


# (A) Daily PP 2017
mean(Daily_PP)
median(Daily_PP)
getMode(Daily_PP)
sd(Daily_PP)

# (B) Histogram of Daily AC and Daily PP
hist(Daily_AC, main = "Histogram AC", col = "brown", border = "yellow")
hist(Daily_PP, main = "Histogram PP", col = "yellow", border = "brown")

# (C) Box plot of Daily_AC and Daily_PP 
boxplot(Daily_AC, main = "Daily AC", xlab = "M_AC <LEFT ---- RIGHT> Daily_AC", col = "green", border = "red")
boxplot(Daily_PP, main = "Daily PP", xlab = "M_AC <LEFT ---- RIGHT> Daily_AC", col = "gold", border = "brown")

# (D) Normal Distribution of Daily AC
pnorm(35.4, mean(Daily_AC), sd(Daily_AC))

# (E) Normal Distribution of Daily PP
pnorm(35.4, mean(Daily_PP), sd(Daily_PP))

# (F) 
pnorm(330, mean(Daily_PP), sd(Daily_PP))



