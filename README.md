# Purpose 
This package provides an efficient method for cleaning unique identifiers used by the Los Angeles County Probation Department. It contains functions that standardize identifiers and a wrapper function that applies multiple identifyr functions at once.
    
# How to Use It
Users can apply the individual functions to an identifier of interest, or use the wrapper `clean_id()` to indicate the column numbers and corresponding functions to apply. The column numbers and the order of the functions must be in the same order.  The result of the wrapper function is a dataframe of the original length, but with replaced values in the indicated columns. Identifyr utilizes the magrittr pipe operator to make the code easy to read, especially when used in conjunction with `dplyr`. 

```{r}
df %>%
  clean_id(
    cols = c(1, 3),  # reference the desired columns to manipulate
    FUN = c("clean_x", "clean_pb")  # apply these functions in this order
  )

  
# Or you can apply one function at a time
clean_x(x)
clean_pb(x) 

```
  
# Where to Find It
Download from github if you have the devtools package for R.

```{r}
install.packages("devtools")

devtools::install_github("georgemirandajr/identifyr")

```
Download from Comprehensive R Archive Network (CRAN)
```{r}
install.packages("identifyr")
```
