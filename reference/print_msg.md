# Print a message

This function prints a simple message. This is a demo function to show
good practices in writing and documenting R function. If you delete this
function do not forget to delete the corresponding test file
`tests/testthat/test-demo.R` if you used `new_package(test = TRUE)`.

## Usage

``` r
print_msg(x = "Hello world")
```

## Arguments

- x:

  a character of length 1. Default is `'Hello world'`.

## Value

The value of `x` (only if the result is assigned to a variable).

## Examples

``` r
print_msg()
#> Hello world 
print_msg("Bonjour le monde")
#> Bonjour le monde 

x <- print_msg("Bonjour le monde")
#> Bonjour le monde 
x
#> [1] "Bonjour le monde"
```
