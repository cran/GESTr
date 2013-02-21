\name{GESTr}
\alias{GESTr}
\title{Gene Expression State Transformation}
\description{Implements the Gene Expression State Transformation (GESTr), a means of modelling the states of expression of genes across a compendium of samples in order to provide a universal scale of gene expression for all genes.}
\usage{GESTr(x,dist.theta=0.05,merge.overlap=0.1,verbose=FALSE)}
\arguments{
	\item{x}{Numeric data input array to be transformed into universal gene expression 'state' scale. Probes/genes should be in rows, samples/conditions in columns.}
	\item{dist.theta}{Numeric value indicating normal distribution quantile to be used for calling replicate group similarity, used in estimating Rocke-Durbin error model parameters.}
	\item{merge.overlap}{Numeric value indicating minimum proportion of overlapping support of GMM components to be merged together}
	\item{verbose}{Boolean indicating whether to provide progress reports during procedure.}
}
\details{Implementation of the Gene Expression State Transformation. The Gene Expression State Transformation (GESTr) is a process by which structural components are identified within the distributions of measurements for each gene across a data compendium, and are then used to transform the expression level measurements into a standardised scale. Any value in this scale has the same biological interpretation, regardless of the gene, and reflects the state of expression in the sample as defined by the levels observed across the compendium. Each gene's expression level distribution across the compendium is modelled using a Gaussian Mixture Model (GMM), without specifying the number of components a priori. Components with substantially overlapping support are merged, so that the final model components reflect distinct states of expression. A classifier is constructed to compute probabilities that any observed measurement arose from each underlying expression state, and finally probabilities of expression-state membership are combined into a linear scale representing the probability of a highly-active transcriptional state of the gene.}
\value{Transformed representation of \code{x}, such that all values lie in range (0,1) and represent the probability of a highly-active transcriptional state of the gene relative to its distribution across the whole dataset.}
\author{Ed Curry \email{e.curry@imperial.ac.uk}}
\examples{
\dontrun{data(GESTr)}
\dontrun{transformed.x <- GESTr(ABIdata)}
}
