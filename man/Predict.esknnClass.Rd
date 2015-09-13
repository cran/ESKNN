\name{Predict.esknnClass}
\alias{Predict.esknnClass}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Class predictions from ensemble of subset of k-nearest neighbours 
}
\description{Classification prediction for test data on the trained \code{esknnClass} object for.}
\usage{
Predict.esknnClass(optModels, xtest, ytest=NULL, k = NULL)
}
\arguments{
  \item{optModels}{An object of esknnClass}
  \item{xtest}{A matrix or data frame test set features/attributes.
}
  \item{ytest}{Optional: A vector of lenth \code{m} consisting of class labels for the test data. Should be binary (0,1), reprenting by a variable \code{Class} in the data. If provided then confusion matrix and classification error rate is returned. 
}
  \item{k}{Number of nearest neighbors considered. The same value is considered as for training in \code{esknnClass}.}
}

\value{
 \item{predClass }{ A vector of predicted classes of test set observations.}
 \item{ConfMatrix }{Confusion matrix return a matrix of cross classification counts based on the estimated class
                   labels and the true class labels of test observations. This matrix is returned if ytest is given.}
 \item{ClassError }{Classification error rate of the clssifier for test set observations. This is returned if ytest is provided.}
}
\references{Gul, A., Perperoglou, A., Khan, Z., Mahmoud, O.,Miftahuddin, M., Adler, W. and Lausen, B.(2014),Ensemble of Subset of kNN Classifiers, Journal name to appear.
}
\author{Asma Gul <agul@essex.ac.uk>
}
\seealso{
\code{\link{esknnClass}}
}
\examples{
# Load the data

  data(hepatitis)
  data <- hepatitis

# Spliting the data into testing and training parts.

  Class <- data[,names(data)=="Class"]
  data$Class<-as.factor(as.numeric(Class)-1)
  train <- data[sample(1:nrow(data),0.7*nrow(data)),]
  test <- data[-(sample(1:nrow(data),0.7*nrow(data))),]
  ytrain<-train[,names(train)=="Class"]
  xtrain<-train[,names(train)!="Class"]
  xtest<-test[,names(test)!="Class"]
  ytest <- test[,names(test)=="Class"]
  
# Trian esknnClass using training data

model<-esknnClass(xtrain, ytrain,k=NULL)

# Predict on test data

resClass<-Predict.esknnClass(model,xtest,ytest,k=NULL)

# Returning Objects are predicted class labels, confusion matrix and classification error

  resClass$predClass
  resClass$ConfMatrix             
  resClass$ClassError 

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ packages }
