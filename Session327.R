library(stringr)

#1
# Function for Printing 
cat('"')
cat("\"")

cat("DSO\n545")
cat("DSO\t545")


#2

cat(":-\\")

cat("(^_^\"")

cat("@_'-'")

cat("\\m/")


str_locate(string = "great", pattern = "a")
str_locate(string = "fantastic", pattern = "a")

str_locate_all(string = "fantastic", pattern = "a")

str_locate(c("fantastic","great","super"), pattern = "a")


str_sub("Testing", 1,3)
str_sub("Testing", 4,7)
str_sub("Testing", 1,4)
str_sub("Testing", end = 4)

#str_sub("Testing",str_locate("Testing", pattern = "tes"))

input <- c("abc","degf")
str_sub(input,c(2,3))

emails <- readRDS("email.rds")

emails[1]

cat(emails[1])


#7

header = str_sub(emails[1], start = 1 , end = str_locate(emails[1], pattern = "\n\n"))
cat(header)

body = str_sub(emails[1],  start = str_locate(emails[1], pattern = "\n\n"))
cat(body)


breaks = str_locate(emails, pattern = "\n\n")

headers = str_sub(emails, end = breaks[,1])
bodies = str_sub(emails, start = breaks[,2])


cat(bodies[6])