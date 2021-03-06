% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/comppred_function.R
\name{comp.pred}
\alias{comp.pred}
\title{Wrapper for classfication algorithms}
\usage{
comp.pred(formula, data.train, data.test = NULL, algorithm = NULL)
}
\arguments{
\item{formula}{a formula}

\item{data.train}{dataframe. A training dataset}

\item{data.test}{dataframe. A testing dataset}

\item{algorithm}{string. An algorithm in the set "lr" -- logistic regression, cart" -- decision trees, "rlr" -- regularised logistic regression, "svm" -- support vector machines, "rf" -- random forests}
}
\description{
This function is a wrapper for many classification algorithms such as CART (rpart::rpart), regularised logistic regression (glmnet::glmnet), support vector machines (svm::svm) and random forests (randomForest::randomForest)
}
\examples{

# Fit many alternative algorithms to the mushrooms dataset


mushrooms.cart.pred <- comp.pred(formula = poisonous ~.,
                               data.train = mushrooms[1:100,],
                               data.test = mushrooms[101:nrow(mushrooms),],
                               algorithm = "cart")

mushrooms.rf.pred <- comp.pred(formula = poisonous ~.,
                               data.train = mushrooms[1:100,],
                               data.test = mushrooms[101:nrow(mushrooms),],
                               algorithm = "rf")

mushrooms.svm.pred <- comp.pred(formula = poisonous ~.,
                               data.train = mushrooms[1:100,],
                               data.test = mushrooms[101:nrow(mushrooms),],
                               algorithm = "svm")



}

