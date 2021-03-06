\name{edit_swatch}
\alias{edit_swatch}
\title{Change the swatch colours in a ggthemr theme}
\usage{
  edit_swatch(themr, new_colours)
}
\arguments{
  \item{themr}{ggthemr object}

  \item{new_swatch}{new colours to use in themr swatch}
}
\description{
  The first colour of the swatch is separate from the
  others. It is used in special cases e.g. the outline
  colour for geom_boxplot(). This colour should have good
  contrast with at least the second colour of the swatch.
}
\details{
  Edit an existing theme's swatch. The swatch contains the
  main colours used in a ggplot outside of the colours for
  the title, axes text, axes lines, gridlines, background
  etc.
}
\examples{
themr <- ggthemr('grass', 'scientific')

# Completely replace existing swatch.
themr <- edit_swatch(themr, c('black', 'green', 'blue', 'white', 'pink', 'purple', 'red'))

# Add another colour onto existing swatch.
themr <- edit_swatch(themr, c(swatch(themr), 'purple'))

# Check that new colour is present.
swatch(themr)
}

