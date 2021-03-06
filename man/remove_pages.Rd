% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/remove_pages.R
\name{remove_pages}
\alias{remove_pages}
\title{Remove selected pages from a file}
\usage{
remove_pages(rmpages, input_filepath = NULL, output_filepath = NULL)
}
\arguments{
\item{rmpages}{a vector of page numbers to be removed}

\item{input_filepath}{the path of the input PDF file.
The default is set to NULL. IF NULL, it  prompt the user to
select the folder interactively.}

\item{output_filepath}{the path of the output output PDF file.
The default is set to NULL. IF NULL, it  prompt the user to
select the folder interactivelye.}
}
\value{
this function returns a PDF document with the
remaining pages
}
\description{
If the toolkit Pdftk is available in the
system, it will be called to remove the given pages from
the seleted PDF files.

See the reference for detailed usage of \code{pdftk}.
}
\examples{
\dontrun{
# This command promts the user to select the file interactively.
# Remove page 2 and 3 from the selected file.
remove_pages(rmpages = c(3,6))
}

\dontrun{
dir <- tempdir()
require(lattice)
for(i in 1:3) {
pdf(file.path(dir, paste("plot", i, ".pdf", sep = "")))
print(xyplot(iris[,1] ~ iris[,i], data = iris))
dev.off()
}
output_file <- file.path(dir, paste('Full_pdf.pdf',  sep = ""))
staple_pdf(input_directory = dir, output_file)
input_path <- file.path(dir, paste("Full_pdf.pdf",  sep = ""))
output_path <-  file.path(dir, paste("trimmed_pdf.pdf",  sep = ""))
remove_pages(rmpages = 1, input_path, output_path)
}
}
\references{
\url{https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/}
}
\author{
Priyanga Dilini Talagala
}
