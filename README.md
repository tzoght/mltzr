
[![R-check](https://github.com/tzoght/mltzr/actions/workflows/R-check.yml/badge.svg)](https://github.com/tzoght/mltzr/actions/workflows/R-check.yml)
[![test-coverage](https://github.com/tzoght/mltzr/actions/workflows/test-coverage.yml/badge.svg)](https://github.com/tzoght/mltzr/actions/workflows/test-coverage.yml)

<!-- README.md is generated from README.Rmd. Please edit that file -->

# mltzr

<!-- badges: start -->
<!-- badges: end -->

The goal of mltzr is to …

## Installation

You can install the development version of mltzr like so:

``` r
# FILL THIS IN! HOW CAN PEOPLE INSTALL YOUR DEV PACKAGE?
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(mltzr)
# basic example code ----
```

# Working with R packages

## Developing in this package

First you need to install and use the following libraries in the Consol
in R Studio or the Command Line with the R repl:

``` r
library(devtools)
libary(usethis)
```

#### To create a new function

``` r
usethis::use_r("funcfoo")
```

will create a new R file under R/ and prompt you to call the following
command to create a new test file

``` r
usethis::use_test("funcfoo")
```

> Don’t forget to export the `funcfoo` function if you want it to be
> externally available by adding `export(print_basic_eda)` to NAMESPACE
>
> **Alternative**: the call to `document()` updates the `NAMESPACE`
> file, based on `@export` tags found in roxygen comments

#### To list loaded packages and load the package under development

In order to list the loaded packages

``` r
devtools::loaded_packages()
```

To load the package under development

``` r
devtools::load_all()
```

> `load_all()` simulates the process of building, installing, and
> attaching the mltzr package. As your package accumulates more
> functions, some exported, some not, some of which call each other,
> some of which call functions from packages you depend on, `load_all()`
> gives you a much more accurate sense of how the package is developing
> than test driving functions defined in the global environment. Also
> `load_all()` allows much faster iteration than actually building,
> installing, and attaching the package

#### To generate docs/man from inline docs

``` r
devtools::document()
```

#### To check the overall state

``` r
devtools::check()
# or to to check specific area
devtools::check_man()
```

> **Read the output of the check!** Deal with problems early and often.
> It’s just like incremental development of `.R` and `.Rmd` files. The
> longer you go between full checks that everything works, the harder it
> becomes to pinpoint and solve your problems.

#### To run all the tests

``` r
devtools::test()
```

To add a dependency on another package

``` r
use_package("dplyr")
```

#### To build this README.Rmd

``` r
devtools::build_readme()
```

## Getting Started With a new project

To create an R package you can use devtools to scaffold the package
structure and different components you will need

    library(devtools)
    devtools::create_package("~/path/to/<R package you want to create root folder ")

For mltzr:

- `.Rbuildignore` lists files that we need to have around but that
  should not be included when building the R package from source.
- `.Rproj.user`, if you have it, is a directory used internally by
  RStudio.
- `.gitignore` anticipates Git usage and ignores some standard,
  behind-the-scenes files created by R and RStudio. Even if you do not
  plan to use Git, this is harmless.
- `DESCRIPTION` provides metadata about your package. We edit this
  shortly.
- `NAMESPACE` declares the functions your package exports for external
  use and the external functions your package imports from other
  packages. At this point, it is empty, except for a comment declaring
  that this is a file we will not edit by hand.
- The `R/` directory is the “business end” of your package. It will soon
  contain `.R` files with function definitions.

To select the type of license for your project

``` r
usethis::use_mit_license() # or any other type of licenses
```

To initialize testing

``` r
usethis::use_testthat()
```

To initialize a Readme for the package

``` r
usethis::use_readme_rmd()
```

To create a code of conduct file

``` r
usethis::use_code_of_conduct()
```

To create a contributing file

``` r
usethis::use_tidy_contributing()
```
