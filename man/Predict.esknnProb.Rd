\name{Predict.esknnProb}
\alias{Predict.esknnProb}
\title{Prediction function returning class membership probability estimates}
\description{
This function provides class membership probability estimates for the test set observations.
}
\usage{
Predict.esknnProb(optModels, xtest, ytest, k = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{optModels}{An object of class esknnProb.
}
  \item{xtest}{A matrix or data frame test set features/attributes.
}
  \item{ytest}{Optional: A vector of class labels for the test data. Class labels should be factor of 
    two levels (0,1) represented by variable \code{Class} in the data. The Brier score is returned if this vector is given.
}
  \item{k}{Number of nearest neighbors considered. The same value should be considered as for training in \code{esknnProb}
}
}

\value{
 \item{PredProb }{ A vector of estimated class membership probabilities of test set observations.}
 \item{BrierScore }{ A vector of Brier Score based on the estimated probabilities and true class label of test set
                   observations. This vector is returned if ytest is given.}
}
\references{ul, A., Perperoglou, A., Khan, Z., Mahmoud, O.,Miftahuddin, M., Adler, W. and Lausen, B.(2014),Ensemble of Subset of kNN Classifiers, Journal name to appear.
}
\author{Asma Gul <agul@essex.ac.uk>}


\seealso{
 \code{\link{esknnProb}}
}
\examples{
# Load the data

data(sonar)
data <- sonar

# Divide the data into testing and training parts

  Class <- data[,names(data)=="Class"]
  
# Class Varible must be a factor in (0,1) 

  data$Class<-as.factor(as.numeric(Class)-1)
  train <- data[sample(1:nrow(data),0.7*nrow(data)),]
  test <- data[-(sample(1:nrow(data),0.7*nrow(data))),]
  ytrain<-train[,names(train)=="Class"]
  xtrain<-train[,names(train)!="Class"]
  xtest<-test[,names(test)!="Class"]
  ytest <- test[,names(test)=="Class"]

# Trian esknnProb

  model<-esknnProb(xtrain, ytrain,k=NULL)

# Predict on test data

  resProb<-Predict.esknnProb(model,xtest,ytest,k=NULL)

## Returning Objects

  resProb$PredProb
  resProb$BrierScore

}
\keyword{Predict.esknnProb}
\keyword{esknn}
