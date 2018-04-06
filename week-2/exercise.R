## Part 1: Debugging

my_num <- 6
initials <- "?. ?."

my_vector <- c(my_num, initials)

# run ?sum to get more info
vector_sum <- sum(my_vector)

# Describe why this doesn't work: 
# my_num and initials aren't same type

install.packages("stringr")
library(stringr)

my_line <- "Hey, hey, this is the library"

print(str_length(my_line))

# Describe why this doesn't work: 
# Didn't call the library.

said_the_famous <- paste(my_line, " - ", initial)

# Describe why this doesn't work: 
# The variable is initials, not initial


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
numbers <- c(1, 8, 5, 4, 8, 2)
typeof(numbers)
# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vec1, vec2) {
  diff_length <- length(vec1) - length(vec2)
  diff_length <- abs(diff_length)
  print(paste("The difference in lengths is", diff_length))
}

# Pass two vectors of different length to your `CompareLength` function
letters <- c("a", "c", "z", "f")
CompareLength(numbers, letters)
# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vec1, vec2) {
  dif <- length(vec1) - length(vec2)
  if(dif >= 0) {
    print(paste("Your first vector is longer by", dif, "elements"))
  }
  else {
    print(paste("Your second vector is longer by", abs(dif), "elements"))
  }
}
# Pass two vectors to your `DescribeDifference` function
DescribeDifference(letters, numbers)

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(vec1, vec2, vec3) {
  vec_combine <- c(vec1, vec2, vec3)
  vec_combine
}
# Send 3 vectors to your function to test it.
words <- c("dog", "car", "bottle")
CombineVectors(numbers, letters, words)
# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters

