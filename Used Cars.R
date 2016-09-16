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
# by adding the dollar sign we replace a feature within an existing data frame. 
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
# create a table with count of elements within the data frame transmission
table(df$transmission)
# provide the length of the transmission data set (count of total variabled)
length(df$transmission)
# get the proprion instead of frequency by dividing the count by the length
table(df$transmission) / length(df$transmission)
# generate a pie chart of proptions (makes sense when comparing categorical data)
pie(table(df$transmission) / length(df$transmission))
# generate bar plot of transmission
barplot(table(df$transmission))
# get the mean of mileage
mean(df$mileage)
# get the median of mileage
median(df$mileage)
# get variance
var(df$mileage)
# get standard deviation
sd(df$mileage)
# generate histogram of mileage
hist(df$mileage)
# generate boxplot
boxplot(df$mileage)
# set boxplot to horizontal orientation
boxplot(df$mileage, horizontal = TRUE)
## Looking at bivariate summaries
# Look at the relationship between transmission and mileage
plot(mileage ~ transmission, data = df)
# use tapply function to get the numbers from the summary statistics. This will get the mean mileage of cars with autiomatic and cars with manual transmission.
tapply(df$mileage, df$transmission, mean)
# use tapply and compare standard deviations
tapply(df$mileage, df$transmission, sd)
# compare numerical to numerical data
# plot price with mileage
plot(price ~ mileage, data = df)
# add third feature (transmission) by changing the shape of the characters being plotted
plot(price ~ mileage, data = df, pch=as.integer(transmission))
# add color to transmission information plot
plot(price ~ mileage, data = df, pch=as.integer(transmission), col = as.integer(transmission))
# edit the color of the plot
plot(price ~ mileage, data = df, pch=as.integer(transmission), col = as.integer(transmission)+3)
# add legend
legend("topright", legend = c("AUTO", "MANUAL"), pch= c(1,2), col = c(4,5))
# Exploring the data using multivariate statistics 
# Create a scatterplot matrix (only feed it numeric variables)
# selects all rows but removes columns 2, 5, and 6.
pairs(df[,-c(2,5,6)])
# calcualte correlation matrix using numeric variables
cor(df[,-c(2,5,6)])
# Aggregate 
aggregate(price ~ transmission, data =df, FUN = mean)
# add thrid function - color - slices up the data for conditionals statistics 
aggregate(price ~ transmission + color, data =df, FUN = mean)
# get count of sliced data
aggregate(price ~ transmission + color, data =df, FUN = length)
# populate table using proportions
table(df$transmission, df$color) / length(df$transmission)
# round to 1 decimal place
round(table(df$transmission, df$color) / length(df$transmission), 1)





