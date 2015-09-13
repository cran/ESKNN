\name{hepatitis}
\alias{hepatitis}
\docType{data}
\title{Hepatitis data set}
\description{This data set is about hepatitus disease. The data set is obtained from UCI machine learning repository. There are 155 observations in total, however this data set consists of 80 observations after removing the observations with missing values. There are 19 features/ attributes where 13 attributes are binary while 6 attributes are discrete valued. The observations are catogarized in two classes classes die and live.  There are 13 observations in class "die" and "67" in class live. 
}
\usage{data(hepatitis)}
\format{
  A data frame with 80 observations on the following 20 variables.
   \describe{
      \item{\code{Age}}{age of the patients in years, from 20 to 80 years.}
      \item{\code{Sex}}{Gender of patient, a factor at two levels coded by 1 (male) and 2(female)}
      \item{\code{Steroid}}{Steroid treatment, a factor at two levels coded by 1(yes) and 2(no) .}
      \item{\code{Antivirals}}{Antivirals medication, a factor at two levels 1 (yes) and 2 (no).}
      \item{\code{Fatigue}}{Fatigue is a frequent and disabling symptom reported by patients with chronic hepatitis,
                            a factor at two levels 1 (yes) and 2 (no).}
      \item{\code{Malaise}}{Malaise one of the symptoms of hepatitis, a factor at two levels 1 (yes) and 2 (no).}
      \item{\code{Anorexia }}{Anorexia, loss of appetite, a factor at two levels 1 (yes) and 2 (no).}
      \item{\code{LiverBig}}{The size of liver increased or fatty, a factor at two levels 1 (yes) and 2 (no).}
      \item{\code{LiverFirm}}{A factor at two levels 1 (yes) and 2 (no).}
      \item{\code{SpleenPalpable}}{Splenomegaly is an enlargement of the spleen, a factor at two levels 1 (yes) and 2 (no).}
      \item{\code{Spiders}}{Enlarged blood vessels that resemble little spiders,a factor at two levels 1 (yes) and 2 (no).}
      \item{\code{Ascites}}{Ascites is the presence of excess fluid in the peritoneal cavity, a factor at two levels 1(yes) and 2(no)).}
      \item{\code{Varices}}{a factor at two levels 1(yes) and 2(no)).}
      \item{\code{Bilirubin}}{Bilirubin is a substance made when the body breaks down old red blood cells,
                 continuous feature}
      \item{\code{AlkPhosphate}}{Alkaline phosphatase is an enzyme made in liver cells and bile ducts, a discrete valued feature reveals level Alkaline phosphatase.}
      \item{\code{Sgot}}{A discrete valued feature.}
      \item{\code{AlbuMin }}{A continous feature.}
      \item{\code{ProTime}}{A discrete valued feature.}
      \item{\code{Histology}}{a factor at two levels 1 (yes) and 2 (no).}
      \item{\code{Class}}{a factor at two levels 1(Die) or 2(Live).}
      }
}
\source{
This data set is available on:
\url{https://archive.ics.uci.edu/ml/datasets/Hepatitis}
}
\examples{
data(hepatitis)
str(hepatitis) 
}
\keyword{datasets}
