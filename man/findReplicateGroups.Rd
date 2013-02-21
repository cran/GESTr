\name{findReplicateGroups}
\alias{findReplicateGroups}
\title{Find Groups of Replicate Samples Within Dataset}
\description{Function to find groups of entities within a distance matrix that are similar to some statistical threshold}
\usage{findReplicateGroups(distMatrix,theta=0.05)}
\arguments{
	\item{distMatrix}{A numeric matrix containing pair-wise distances between each sample of the datset.}
	\item{theta}{A numeric value specifying the quantile of the Normal distribution (approximating the distribution of pairwise distances) to be used to call samples suitable similar to be considered replicates.}
}
\details{Approximates all pair-wise distances with a Normal distribution, then find each group of samples for which all distances are less than the specified quantile of the approximated distribution.}
\value{List with a separate element for each replicate group: the individual groups are represented by a vector of corresponding sample indices.}
\author{Ed Curry \email{e.curry@imperial.ac.uk}}
\examples{
### internal function ###
}
