\name{getMonotonicConfidences_multiclass}
\alias{getMonotonicConfidences_multiclass}
\title{Ensure monotonicity of multi-class gene expression state confidence assignments}
\description{Ensures monotonicity of a gene's expression state confidence assignments, in terms of the underlying gene expression values.}
\usage{getMonotonicConfidences_multiclass(ClassScoreList,exprs,verbose=FALSE)}
\arguments{
	\item{ClassScoreList}{List where each element is a numeric vector of probabilities of state membership. One (vector) element per state in the model.}
	\item{exprs}{A numeric vector of expression values for one gene}
	\item{verbose}{Logical value specifying whether to print output when correction required.}
}
\details{Processes two vectors of class membership scores, returning values corrected so as to ensure monotonicity.}
\value{List with 2 elements, each a numeric vector of probabilities of state membership. One (vector) element for low-expression state and one for high-expression state.}
\author{Ed Curry \email{e.curry@imperial.ac.uk}}
\examples{
### internal function ###
}
