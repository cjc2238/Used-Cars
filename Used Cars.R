# Load CSV
# Set all strings to not be factors in order to manueally create the factors later.
df3 <- read.csv("usedcars.csv", stringsAsFactors = FALSE)
# Inspect data frame structure
str(df3)
