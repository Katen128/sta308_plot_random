#################
## plot_random_function.R
##
## Katen Kamal
##
## Purpose:
## A function that will generate a random
## sample of normal values, plot a histogram
## with an overlaid mean on the plot
## and returns summary statistics about the
## generated data.

## Inputs
##    

plotRandomNormals <- function(numpts=50, bins=10, mu=0, sigma=1, seed=NULL)
  {
  set.seed(seed)
}
{
  rand_sample <- (rnorm(numpts, mean=mu, sd = sigma))
  hist(rand_sample, breaks = bins+1)
  abline(v = mean(rand_sample), col="blue" )
  mean(rand_sample)
  sd(rand_sample)
  list(Random_sample = rand_sample,
       Mean_sample =mean_sample,
       Sd_sample = sd(rand_sample) )
}

#Default Values
plotRandomNormals()

#User specified number of points
plotRandomNormals(numpts=30, bins=200)

plotRandomNormals(numpts=1000, bins=20)

plotRandomNormals(numpts=1000, bins=20, mu=63.5, sigma = 4.5)

plotRandomNormals(seed=1)

##Inputs:
##    numpts = the number of points to generate, defaults to 50
##    bins = the number of breakpoints in the hist() function, 
##             defaults to 10
