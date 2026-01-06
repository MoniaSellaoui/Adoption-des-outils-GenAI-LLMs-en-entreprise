library(readr)
library(dplyr)

# Load data
genai <- read_csv("qmd/data/enterprise_genai_data.csv", show_col_types = FALSE) %>%
    rename(
        country       = Country,
        employees_imp = `Number of Employees Impacted`
    )

# Calculate summary
country_summary <- genai %>%
    group_by(country) %>%
    summarise(
        n_companies      = n(),
        total_employees  = sum(employees_imp, na.rm = TRUE)
    ) %>%
    arrange(desc(n_companies))

print("\nTop 15 Countries by Number of Companies:")
print(head(country_summary, 15))

# Check for USA specifically
usa_stats <- country_summary %>%
    mutate(rank = row_number()) %>%
    filter(country %in% c("United States", "USA", "US"))

print("\nUSA Stats:")
print(usa_stats)
