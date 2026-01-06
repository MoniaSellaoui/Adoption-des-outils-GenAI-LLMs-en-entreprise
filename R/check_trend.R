library(readr)
library(dplyr)

# Load data
genai <- read_csv("qmd/data/enterprise_genai_data.csv", show_col_types = FALSE) %>%
    rename(
        adoption_year = `Adoption Year`,
        prod_change   = `Productivity Change (%)`
    )

# Calculate means
prod_by_year <- genai %>%
    group_by(adoption_year) %>%
    summarise(
        mean_prod = mean(prod_change, na.rm = TRUE),
        sd_prod = sd(prod_change, na.rm = TRUE),
        n = n()
    )

print(prod_by_year)

# Check scale of difference
diff_max <- max(prod_by_year$mean_prod) - min(prod_by_year$mean_prod)
cat("\nMax difference:", diff_max, "\n")
