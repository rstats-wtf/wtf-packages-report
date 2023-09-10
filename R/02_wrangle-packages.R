# Restart R here!

# 1. Create a data frame by reading from data/installed-packages.csv. ----------
# hint: readr::read_csv() or read.csv()
# idea: try using here::here() to create the file path


# 2. Filter out the base and recommended packages. -----------------------------
# (retaining the packages added on after installation)
# Keep the variables Package and Built.
# If you use dplyr, code like this will work.
df_pkgs_addon <- df_pkgs |>
  filter(is.na(Priority)) |>
  select(Package, Built)

# 3. Write this new, smaller data frame to data/add-on-packages.csv. -----------
# hint: readr::write_csv() or write.table()
# idea: try using here::here() to create the file path

# 4. Summarize the packages with a frequency table of the version in Built. ----
# if you use dplyr, code like this will work:
pkgs_addon_freqtable <- df_pkgs_addon |>
  count(Built) |>
  mutate(prop = n / sum(n))

# 5. Write this data frame to data/add-on-packages-freqtable.csv. --------------
# hint: readr::write_csv() or write.table()
# idea: try using here::here() to create the file path
# ----
# YES overwrite the files that are there now
# they are old output from Jenny
# they are just examples
