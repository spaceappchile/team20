\name{dirMissions}
\alias{dirMissions}
\title{
Returns a data.frame of the existing missions that suit a keyword
}
\description{
Given a single or a set of keywords, this function lists NASA's missions
and returns a two column data-frame including its name and ID (for PDS)
}
\usage{
dirMissions(keywords=NULL, missions=NULL)
}
\arguments{
  \item{keywords}{An optional vector character with pattern to search in the list of NASA's missions.}
  \item{missions}{An optional data.frame of missions.}
}
\details{
If no \code{keywords} is given, then the full set of missions will be returned, otherwise
a regex match will be made against missions' names.

If \code{mission} is \code{NULL}, then \code{dirMissions} will retrive
an updated set of missions from \url{http://pds.jpl.nasa.gov/tools/dsstatus/}
}
\value{
Two-column data.frame containing missions PDS Id and Name.
}
\author{
George G. Vega
}
\seealso{\code{\link{getFolderStructure}}}
\examples{
\dontrun{
marcians <- dirMissions("mars")
}
}
%\keyword{ IO }