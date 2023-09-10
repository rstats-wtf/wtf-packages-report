# deja vu from earlier!

# 1. Create a data frame of your installed packages. ---------------------------
# hint: installed.packages() is the function you need
library(tidyverse)
df_pkgs <- installed.packages() |>
  as_tibble()

# optional: select just some of the variables, such as
#   * Package
#   * LibPath
#   * Version
#   * Priority
#   * Built

# 2. Write this data frame to data/installed-packages.csv. ---------------------
# hint: readr::write_csv() or write.table()
# idea: try using here::here() to create the file path
readr::write_csv(df_pkgs, "data/installed-packages.csv")

# YES overwrite the file that is there now (or delete it first)
# that is an old result from Jenny
# it an example of what yours should look like and where it should go
