\name{mergeComponents}
\alias{mergeComponents}
\title{Merge GMM Components with Highly Overlapping Support}
\description{Function to merge GMM components with predominantly overlapping support}
\usage{mergeComponents(model,overlap)}
\arguments{
	\item{model}{An object of class \code{Mclust}, produced by the function \code{fitGMM}}
	\item{overlap}{A numeric value specifying the classification score threshold: minimum value of \code{model$z} for a value to be considered as supported by a given mixture component.}
}
\details{Identifies GMM components with sufficiently overlapping support, if for those components the average E-M classification score across all points with a maximum score corresponding to any of those components is greater than the specified threshold.}
\value{List where each element is a vector of indices specifying components from input \code{model} to merge together in gene expression state estimation.}
\author{Ed Curry \email{e.curry@imperial.ac.uk}}
\examples{
### internal function ###
}
