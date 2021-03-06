% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getLevel2BPAIProfile.R
\name{getLevel2BPAIProfile}
\alias{getLevel2BPAIProfile}
\title{Get GEDI Plant Area Index (PAI) Profile (GEDI Level2B)}
\usage{
getLevel2BPAIProfile(level2b)
}
\arguments{
\item{level2b}{A GEDI Level2B object (output of \code{\link[rGEDI:readLevel2B]{readLevel2B}} function).
An S4 object of class "gedi.level2b".}
}
\value{
Returns an S4 object of class \code{\link[data.table:data.table]{data.table-class}}
containing the elevation and relative heights.
}
\description{
This function extracts the Plant Area Index (PAI) Profile from GEDI Level2B data.
}
\examples{
# Specifying the path to GEDI level2B data (zip file)
outdir = tempdir()
level2B_fp_zip <- system.file("extdata",
                  "GEDI02_B_2019108080338_O01964_T05337_02_001_01_sub.zip",
                  package="rGEDI")

# Unzipping GEDI level2A data
level2Bpath <- unzip(level2B_fp_zip,exdir = outdir)

# Reading GEDI level2B data (h5 file)
level2b<-readLevel2B(level2Bpath=level2Bpath)

# Extracting GEDI Plant Area Index (PAI) Profile (GEDI Level2B)
level2BPAIProfile<-getLevel2BPAIProfile(level2b)
head(level2BPAIProfile)

close(level2b)
}
\seealso{
https://lpdaac.usgs.gov/products/gedi02_bv001/
}
