# Analytical Skills for Business

Course **Analytical Skills for Business** in the Master Studies Business Administration (M. A.) at the Hochschule Fresenius - University of Applied Sciences - International Business School in Cologne Germany.

## Setup R Environment

Setup the R environment using `renv`:

```bash
# Installing renv
Rscript -e 'install.packages("renv", repos="https://cloud.r-project.org"); renv::restore(lockfile = "r-code/renv.lock")'
```

In the R console:

```r
# Installing renv package if not already installed
install.packages('renv')

# Restoring the R environment from the lockfile
renv::restore()

# Installing needed packages
install.packages(c("jsonlite", "rlang"))
```

Update the project's `.Rprofile`:

```txt
source("r-code/renv/activate.R")
```

and create a `.Renviron` file in the project root with the following content:

```txt
RENV_PROJECT=./r-code
```

### Update R Environment

```r
# Updating renv packages
renv::update()
```

## Knitting the Document

```bash
# Knitting the quarto document
quarto render Analytical_Skills_for_Business.qmd
```
