# View working directoy of my R project
getwd()
# Load CSV
df3 <- read.csv("usedcars.csv")
# Inspect data frame structure
str(df3)
# Pull the first 6 columns and headers to view a snipet of my data
head(df3)
# create new data frame, this time remove factors
df4 <- read.csv("usedcars.csv", stringsAsFactors = FALSE)
# compare the data frames
str(df3)
str(df4)
