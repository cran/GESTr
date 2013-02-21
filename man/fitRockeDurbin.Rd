\name{fitRockeDurbin}
\alias{fitRockeDurbin}
\title{Fit Rocke-Durbin Error Model}
\description{Estimates Rocke-Durbin error model parameters for a gene expression dataset.}
\usage{fitRockeDurbin(x,theta)}
\arguments{
	\item{x}{Numeric data input array to be transformed into universal gene expression 'state' scale. Probes/genes should be in rows, samples/conditions in columns.}
	\item{theta}{Numeric value specifying Normal distribution quantile for identifying groups samples similar enough to be treated as replicates}
}
\details{Estimates error model parameters for Rocke-Durbin model of microarray measurement errors. The model comprises three parameters to be estimated: the background measurement level, an intensity-dependent error term and an intensity-independent error term. This function finds groups of suitably-similar samples from the dataset to be treated as replicates, and estimates model parameters from constitutively-low and constitutively-high measurements.}
\value{A list with 3 named components:
\item{alpha}{background measurement}
\item{sd_epsilon}{standard deviation of intensity-dependent errors}
\item{sd_eta}{standard deviation of intensity-independent errors}}
\author{Ed Curry \email{e.curry@imperial.ac.uk}}
\examples{
\dontrun{data(GESTr)}
\dontrun{RDparameters <- fitRockeDurbin(ABIdata,theta=0.05)}
}
