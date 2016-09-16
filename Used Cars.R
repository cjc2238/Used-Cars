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
# convert transmission to factor (categoricalvariables need to be converted to factors)
df4$transmission <- factor(df4$transmission)
# rename df4 to df
df <- df4
# Take a subset of the data (df) and only select the yellow cars.
subset(df, color %in% "Yellow")
# assign yellow cars subset of data frame
yellow_cars <- subset(df, color %in% "Yellow")
# only look at cars with mileage over 100,000 miles.
subset(df, mileage > 100000)
# Look at all cars with manual transmission
subset(df, transmission %in% "MANUAL")
# only look at a specific variable name_$_featurename
df$color
# show the first element
df$color[3]
# isolate and create table of a specific variable, in tis case it's color.
table(df$color)
# show first row and all the columns
df[1,]
# show first row and only third columns
df[1,3]
# show me the first row, thrid row, and 6th row. And then only show me the color.
df[c(1,3, 6), 5]
# show me the first row, thrid row, and 6th row. And then only show me the color using column name instead of column number.
df[c(1,3, 6), "color"]
# Give me the color and the type of transission from the 1st 3rd and 6th cars 
df[c(1,3, 6), c("color","transmission")]
# show me everything but the color (all the other features), must use column numbers and not feature names.
df[c(1,3, 6), -c(5,6)]
