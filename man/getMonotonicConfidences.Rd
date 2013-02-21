\name{getMonotonicConfidences}
\alias{getMonotonicConfidences}
\title{Ensure monotonicity of two-class gene expression state confidence assignments}
\description{Ensures monotonicity of a gene's expression state confidence assignments, in terms of the underlying gene expression values.}
\usage{getMonotonicConfidences(ClassScoreList)}
\arguments{
	\item{ClassScoreList}{List with 2 elements, each a numeric vector of probabilities of state membership. One (vector) element for low-expression state and one for high-expression state.}
}
\details{Processes two vectors of class membership scores, returning values corrected so as to ensure monotonicity.}
\value{List with 2 elements, each a numeric vector of probabilities of state membership. One (vector) element for low-expression state and one for high-expression state.}
\author{Ed Curry \email{e.curry@imperial.ac.uk}}
\examples{
### internal function ###
}
