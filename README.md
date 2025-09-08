# Analytical Skills for Business

Course **Analytical Skills for Business** in the Master Studies Business Administration (M. A.) at the Hochschule Fresenius - University of Applied Sciences - International Business School in Cologne Germany.

## Setup R Environment

```r
# Installing renv package if not already installed
install.packages('renv')

# Restoring the R environment from the lockfile
renv::restore()

# Installing needed packages
install.packages(c("jsonlite", "rlang"))
```

Update the project's R.profile:

```txt
source("r-code/renv/activate.R")
```

### Update R Environment

```r
# Updating renv packages
renv::update()

# Updating renv lockfile
renv::snapshot(lockfile = "r-code/renv.lock")

## Knitting the Document

```bash
# Knitting the quarto document
quarto render Analytical_Skills_for_Business.qmd
```
