% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/interface.R
\name{get.marginal.allele.fitness}
\alias{get.marginal.allele.fitness}
\title{get the marginal fitness of all allele from one locus}
\usage{
get.marginal.allele.fitness(genome, freqs, locus)
}
\arguments{
\item{genome}{A S4 object of type genome}

\item{freqs}{a matrix of frequency as returned by the function `compute.frequency.evolution`}

\item{locus.position}{the index of the locus from which we want to plot the allele frequency}
}
\description{
given a matrix of frequency returned by the function `compute.frequency.evolution`
and the associated genome, return a matrix containing the evolution of the marginal
fitness of all allele. The marginal fitness is defined as the mean fitness of
individual carrying this allele weighted by the frequency of those individuals.
}
\examples{
locus1 = create.locus(allele1=c(1,1),allele2 = c(1,2),sd = c(0,1))
locus2 = create.locus(allele1=  c(1,1,2),allele2 = c(1,2,2),fitness.female = c(1,0.9,0.8),fitness.male = c(0.6,0.8,1))
genome = create.genome(locus=list(locus1,locus2))
freqs <- compute.frequency.evolution(genome)
get.gamete.marginal.fitness(genome, freqs)
}
