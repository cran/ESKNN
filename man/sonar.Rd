\name{sonar}
\alias{sonar}
\docType{data}
\title{Sonar, Mines vs. Rocks.}
\description{This data set is a collection of sonar signals, coded as 60 continuous attributes on 208 observations. The sonar signals are obtained from a variety of different aspect angles, spanning 90 degrees for mines and 180 degrees for rocks. The task is classification of sonar signals in two catagories, signals bounced off a "rock" or a "metal cylinder". Each pattern in the data is a set of 60 numbers (continous) in the range 0.0 to 1.0, where each number represents the energy within a particular frequency band, integrated over a certain period of time.
             From total 208 observations, 111 obtained by bouncing sonar signals off a metal cylinder at various angles and under various conditions, is labled with "M" and 97 patterns obtained from rocks under similar conditions is labled with "R".}
\usage{data(sonar)}
\format{
        A data frame with 208 observations on 60 features/attributes in two classes. All the features are numerical and the class is nominal.
    }
\source{ This data set is available on:
\url{ftp://ftp.ics.uci.edu/pub/machine-learning-databases}
\url{http://sci2s.ugr.es/keel/dataset.php?cod=85}
}
\references{
Gorman, R. P., and Sejnowski, T. J. (1988). "Analysis of Hidden Units in a Layered Network Trained to Classify Sonar Targets" in Neural Networks, Vol. 1, pp. 75-89.

Friedrich Leisch & Evgenia Dimitriadou (2010). mlbench: Machine Learning Benchmark Problems. R package
  version 2.1-1.
}
\examples{
data(sonar)
str(sonar) 
}
\keyword{datasets}
