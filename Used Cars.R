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
# convert transmission to factor 
df4$transmission <- factor(df4$transmission)
# rename df4 to df
df <- df4
# Take a subset of the data (df) and only select the yellow cars.
subset(df, color %in% "Yellow")
# assign yellow cars subset of data frame
yellow_cars <- subset(df, color %in% "Yellow")
