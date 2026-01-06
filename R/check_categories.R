library(readr)
library(dplyr)

# Load data
genai <- read_csv("qmd/data/enterprise_genai_data.csv", show_col_types = FALSE) %>%
    rename(
        training_hours = `Training Hours Provided`,
        prod_change    = `Productivity Change (%)`
    )

# Calculate means by group
genai_grouped <- genai %>%
    mutate(training_group = cut(
        training_hours,
        breaks = c(-Inf, 8000, 16000, Inf),
        labels = c("Low", "Medium", "High")
    )) %>%
    group_by(training_group) %>%
    summarise(
        mean_prod = mean(prod_change, na.rm = TRUE),
        n = n()
    )

print(genai_grouped)
