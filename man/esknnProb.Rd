\name{esknnProb}
\alias{esknnProb}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Train the ensemble of subset of k-nearest neighbours classifiers for estimation of class membership probabilty.}
\description{
This function selects a subset of optimal models from a set of \code{m} models, initially generated on bootstrap sample with a random feature subset from the training data, for class membership probability estimation. The values for the hyper parameters, for example subset size of the best models from the total initial \code{m} models, can be specified by the user otherwise the default values are considered. 
}
\usage{
esknnProb(xtrain, ytrain, k = NULL, q = NULL, m = NULL, ss = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{xtrain}{A matrix or data frame of size \code{n x d} dimension where \code{n} is the number of traing 
              observation and  \code{d} is the number of features.}
  \item{ytrain}{A vector of class labels for the training data. Class labels should be factor of 
               two levels (0,1) represented by variable \code{Class} in the data.
  }
 \item{k}{Number of nearest neighbours to be considered, when \code{NULL} then the default is set to\code{k=3}.
 }
 \item{q}{Percent of models to be selected from the initial set \code{m}.
 }
 \item{m}{Number of models to be generated in the first stage, when \code{NULL} the default is \code{m=501}.
 }
 \item{ss}{Feature subset size to be selected from \code{d} features for each bootstrap sample, when \code{NULL} the 
         default is \code{(number of features)/3}.
}
}
\value{
\item{trainfinal}{List of the extracted opimal models.}
\item{fsfinal }{List of the features used in each selected models.}
}
\references{
Gul, A., Perperoglou, A., Khan, Z., Mahmoud, O.,Miftahuddin, M., Adler, W. and Lausen, B.(2014),Ensemble of Subset of kNN Classifiers, Journal name to appear.
}
\author{Asma Gul <agul@essex.ac.uk>}
%% ~Make other sections like Warning with \section{Warning }{....} ~
\seealso{
\code{\link{Predict.esknnProb}}
}
\examples{

# Load the data

  data(sonar)
  data <- sonar

# Divide the data into testing and training

  Class <- data[,names(data)=="Class"]
  data$Class<-as.factor(as.numeric(Class)-1)
  train <- data[sample(1:nrow(data),0.7*nrow(data)),]
  test <- data[-(sample(1:nrow(data),0.7*nrow(data))),]
  ytrain<-train[,names(train)=="Class"]
  xtrain<-train[,names(train)!="Class"]
  xtest<-test[,names(test)!="Class"]
  ytest <- test[,names(test)=="Class"]

# Trian esknnProb on training data

  model<-esknnProb(xtrain, ytrain,k=NULL)

# Predict on test data

  resProb<-Predict.esknnProb(model,xtest,ytest,k=NULL)

## Returning Objects

  resProb$PredProb
  resProb$BrierScore

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{esknnClass}
\keyword{esknn}