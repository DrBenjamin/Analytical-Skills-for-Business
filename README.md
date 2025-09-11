# Analytical Skills for Business

Course **Analytical Skills for Business** in the Master Studies Business Administration (M. A.) at the Hochschule Fresenius - University of Applied Sciences - International Business School in Cologne Germany.

## Setup Python Environment

Setup the Python environment using `conda`:

```bash
# Create and activate the conda environment
conda env create -f python/environment.yml
conda activate r-reticulate
```

## Setup R Environment

Setup the R environment using `renv`:

```bash
# Installing renv
Rscript -e 'source(".Rprofile"); install.packages("renv", repos="https://cloud.r-project.org")'

# Installing pak package
Rscript --vanilla -e 'source(".Rprofile"); install.packages("pak", repos="https://cloud.r-project.org")'

# Installing reticulate package
Rscript -e 'source(".Rprofile"); install.packages("reticulate", repos="https://cloud.r-project.org")'

# Installing rmarkdown package
Rscript -e 'source(".Rprofile"); install.packages("rmarkdown", repos="https://cloud.r-project.org")'

# Installing knitr package
Rscript -e 'source(".Rprofile"); install.packages("knitr", repos="https://cloud.r-project.org")'

# Installing RefManageR package
Rscript -e 'source(".Rprofile"); install.packages("RefManageR", repos="https://cloud.r-project.org")'

# Installing jsonlite package
Rscript -e 'source(".Rprofile"); install.packages("jsonlite", repos="https://cloud.r-project.org")'

# Installing rlang package
Rscript -e 'source(".Rprofile"); install.packages("rlang", repos="https://cloud.r-project.org")'
```

In the R console:

```r
# Checking R installation
R.home("bin")
file.path(R.home("bin"), "R")
R.version
```

check for the correct R version (4.5.0 or higher).

```r
# Installing renv package if not already installed
install.packages('renv')

# Checking renv installation
renv::paths$library()
renv::status()

# Checking renv variable `proj_root`, `rcode_path` and `renv_activate`
setwd("/Users/ben/Documents/Studies/Business Administration (M. A.)/Analytical Skills for Business/Projects/Analytical-Skills-for-Business/")
proj_root <- getwd()
rcode_path <- file.path(proj_root, "r-code")
renv_activate <- file.path("renv/activate.R")
renv::status()
```

Now set up the path in VS Code settings (see `settings.json`) for the `r.libPaths` variable.

```r
# Restoring the R environment from the lockfile
renv::restore()

# Snapshot the current state of the R environment
renv::settings$snapshot.type("all")
renv::snapshot(confirm = FALSE)
```

Update the project's `.Rprofile`:

```txt
source("renv/activate.R")
```

and create a `.Renviron` file in the project root with the following content:

```txt
RENV_PROJECT=./
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
