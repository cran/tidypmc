% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pmc_reference.R
\name{pmc_reference}
\alias{pmc_reference}
\title{Format references cited}
\usage{
pmc_reference(doc)
}
\arguments{
\item{doc}{\code{xml_document} from PubMed Central}
}
\value{
a tibble with id, pmid, authors, year, title, journal, volume, pages,
and doi.
}
\description{
Format references cited
}
\note{
Mixed citations without any child tags are added to the author column.
}
\examples{
# doc <- pmc_xml("PMC2231364")
doc <- xml2::read_xml(system.file("extdata/PMC2231364.xml",
  package = "tidypmc"
))
x <- pmc_reference(doc)
x
}
\author{
Chris Stubben
}
