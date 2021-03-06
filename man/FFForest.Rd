% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FFForest.R
\name{FFForest}
\alias{FFForest}
\title{Creates a forest of fast and frugal decision trees}
\usage{
FFForest(formula = NULL, data = NULL, data.test = NULL, max.levels = 5,
  ntree = 10, train.p = 0.5, algorithm = "m", goal = "bacc",
  sens.weight = 0.5, verbose = TRUE, cpus = 1, do.lr = TRUE,
  do.cart = TRUE, do.rf = TRUE, do.svm = TRUE, rank.method = NULL,
  hr.weight = NULL)
}
\arguments{
\item{formula}{formula. A formula specifying a binary criterion as a function of multiple variables}

\item{data}{dataframe. A dataframe containing variables in formula}

\item{data.test}{dataframe. An optional dataframe of test data}

\item{max.levels}{integer. Maximum number of levels considered for the trees.}

\item{ntree}{integer. Number of trees to create.}

\item{train.p}{numeric. What percentage of the data should be used to fit each tree? Smaller values will result in more diverse trees.}

\item{algorithm}{string. How to rank cues during tree construction. "m" (for marginal) means that cues will only be ranked once with the entire training dataset. "c" (conditional) means that cues will be ranked after each level in the tree with the remaining unclassified training exemplars. This also means that the same cue can be used multiple times in the trees. Note that the "c" method will take (much) longer and may be prone to overfitting.}

\item{goal}{character. A string indicating the statistic to maximize: "acc" = overall accuracy, "bacc" = balanced accuracy, "d" = d-prime}

\item{sens.weight}{numeric. How much weight to give to maximizing hits versus minimizing false alarms (between 0 and 1)}

\item{verbose}{logical. Should progress reports be printed?}

\item{cpus}{integer. Number of cpus to use. Any value larger than 1 will initiate parallel calculations in snowfall.}

\item{do.lr, do.cart, do.rf, do.svm}{logical. Should logistic regression, cart, regularized logistic regression, random forests and/or support vector machines be calculated for comparison?}

\item{rank.method, hr.weight}{depricated arguments}
}
\value{
An object of class \code{FFForest} with the following elements...
}
\description{
This function is currently in development. The idea is to generate a random forest of fast and frugal trees from many splits of the training dataset.
}
\examples{

cancer.fff <- FFForest(formula = diagnosis ~.,
                     data = breastcancer,
                     ntree = 10,
                     cpus = 1)



}

