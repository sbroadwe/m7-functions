# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2){
  dif <- abs(length(v1) - length(v2))
  return(paste0("The Difference in lengths is ", dif))
}


# Pass two vectors of different length to your `CompareLength` function
CompareLength(c(1,1), c(2,3,2))


# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(v1, v2){
  dif <- length(v1) - length(v2)
  if (dif > 0){
    ans <- paste0("Your first vector is longer by ", dif, " elements")
  } else {
    dif2 <- dif*-1
    ans <- paste0("Your second vector is longer by ", dif2, " elements")
  }
  return(ans)
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(c(1,1), c(1,1,1))

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer