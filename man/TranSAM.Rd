\name{TranSAM}
\alias{TranSAM}
\title{Gene Expression State Transformed Significance Analysis of Microarrays}
\description{Implements TranSAM, a method to use the GESTr-transformed representation of gene expression data to identify genes with _biologically_ significant variation: that is, statistically significant differential expression across biologically distinct states of expression observed in the compendium used for reference (calculating the GESTr models).}
\usage{TranSAM(x,samples1,samples2,minChange=0.2,var_filter=0.01,maxFDR=1,changeStep=0.1,scoreFun="magChange")}
\arguments{
	\item{x}{Numeric data array of transformed gene expression 'state' values. Output from \code{GESTr} function. Probes/genes should be in rows, samples/conditions in columns.}
	\item{samples1}{Numeric vector of indices for first group of samples}
	\item{samples2}{Numeric vector of indices for second group of samples}
	\item{minChange}{Numeric value specifying minimum value of the observed difference between the groups, compared to the expected difference as estimated from the balanced permutations}
	\item{var_filter}{Numeric value specifying a minimum standard deviation in gene expression state values for a gene to be included in the analysis}
	\item{maxFDR}{Numeric value specifying maximum allowed group-wise False Discovery Rate, the function will iterate over successively greater minimum observed differences until estimated FDR is below maxFDR}
	\item{changeStep}{Numeric value specifying step-wise increase of \code{minChange} filter at each iteration}
	\item{scoreFun}{Character specifying method of scoring. \code{"dstat"} uses a regularized t-statistic, making it an analogue of the Significance Analysis of Microarrays (SAM) approach. Any other value uses the absolute difference between the median expression state value of the gene in question across the two groups.}
}
\details{The TranSAM algorithm constructs balanced permutations of the input data and uses these to estimate the false-discovery rates of identifying genes as belonging to different expression states in the two specified sample groups. The balanced permutations are constructed so that an equal number of samples from each specified group are in each partition, and thus can be used to approximate a distribution of expected variation in gene expression state across the groups if the specified grouping were to have no biological relevance (in terms of gene expression profiles).}
\value{A Data Frame with columns:\\
	\item{genes}{The rownames of input \code{x} corresponding to the genes with significant differential expression between the specified group}
	\item{obs.exp.ratios}{The calculated scoring statistic for differential expression (in terms of observed value compared to expected)}
	\item{change}{The difference in median gene expression state values for the gene across the two groups}
	\item{FDR.estimate}{Estimated Family-Wise Error Rate (FWER) across all genes at least as differentially expressed as the selected gene. This is analogous to FDRor the q-value}
}
\author{Ed Curry \email{e.curry@imperial.ac.uk}}
\examples{
## load data and run GESTr on a subset of this to create transformed data
data(GESTr)
selected.columns <- sort(c(sample(1:ncol(ABIdata),30),which(colnames(ABIdata) \%in\% c("GSM194513","GSM194514","GSM194515","GSM194516","GSM194517","GSM194518"))))
transformed.x <- GESTr(ABIdata[1:20,selected.columns])

## choose samples for analysis
thy.adult <- which(colnames(transformed.x) \%in\% c("GSM194513","GSM194514","GSM194515"))
thy.fetal <- which(colnames(transformed.x) \%in\% c("GSM194516","GSM194517","GSM194518"))

## run TranSAM on selected samples
ts.out <- TranSAM(transformed.x[,c(thy.adult,thy.fetal)],samples1=1:3,samples2=4:6)

}
