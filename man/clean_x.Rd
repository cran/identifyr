% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clean_x.R
\name{clean_x}
\alias{clean_x}
\title{Clean X Numbers}
\usage{
clean_x(x, using = NULL, value = NULL)
}
\arguments{
\item{x}{character vector containing X numbers}

\item{using}{string indicating the name of a reference identifier to compare with. May be one of the following options: "CASE" or "CII".}

\item{value}{list or character vector that contains the actual values of the known identifier.}
}
\value{
Character vector of standardized X numbers. By default, NA values are introduced where there appears to be non-X characters present, unless a match was found in the reference table.
}
\description{
Useful for correcting manually entered or missing X-numbers that may be abbreviated or contain non-standard methods for handling null values such as "No #"
}
\details{
By default, clean_x() simply pads the string containing X numbers and ensures it meets the standard format. This is useful when correcting a small amount of X numbers, or when there is an untrustworthy reference identifier. If a clean case or CII number is available, the X numbers can be cross-referenced to a built-in table using the reference identifier. Only one reference identifier is allowed at the time of the current release.
}
\examples{
clean_x("X6789") # X00006789
clean_x("No #") # NA
clean_x("1234") # X00001234
clean_x("X00020", using = "CASE", value = "PB021665")
clean_x("X00020", using = "CII", value = "A07515123")
}
\seealso{
clean_case, clean_id, obtain_id
}

