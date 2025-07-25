isEvent = function(numDice, numSides, targetValue, numTrials){
  apply(matrix(sample(1:numSides, numDice*numTrials, replace=TRUE), 
               nrow=numDice), 2, sum) >= targetValue
}
### Part 1
set.seed(12345)
outcomes_5000_a = isEvent(2, 6, 4, 5000)
cat("Estimated probability with 5,000 trials:", mean(outcomes_5000_a), "\n")

set.seed(12345)
outcomes_25000_a = isEvent(2, 6, 4, 25000)
cat("Estimated probability with 25,000 trials:", mean(outcomes_25000_a), "\n")

set.seed(12345)
outcomes_100000_a = isEvent(2, 6, 4, 100000)
cat("Estimated probability with 100,000 trials:", mean(outcomes_100000_a), "\n")
cat("Actual probability is 0.917\n\n")

### Part 2
set.seed(13245)
outcomes_5000_b = isEvent(2, 6, 11, 5000)
cat("Estimated probability with 5,000 trials:", mean(outcomes_5000_b), "\n")

set.seed(13245)
outcomes_25000_b = isEvent(2, 6, 11, 25000)
cat("Estimated probability with 25,000 trials:", mean(outcomes_25000_b), "\n")

set.seed(13245)
outcomes_100000_b = isEvent(2, 6, 11, 100000)
cat("Estimated probability with 100,000 trials:", mean(outcomes_100000_b), "\n")
cat("Actual probability is 0.083\n")
