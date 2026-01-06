library(readr)
library(dplyr)

# Load data
data_path <- "qmd/data/enterprise_genai_data.csv"
if (!file.exists(data_path)) {
    # try alternate path if running from root or R dir
    data_path <- "../qmd/data/enterprise_genai_data.csv"
}
if (!file.exists(data_path)) {
    data_path <- "enterprise_genai_data.csv"
}

cat("Loading data from:", data_path, "\n\n")
df <- read_csv(data_path, show_col_types = FALSE)

cat("--- Dimensions ---\n")
print(dim(df))
cat("\n")

cat("--- Missing Values ---\n")
print(colSums(is.na(df)))
cat("\n")

cat("--- Duplicates ---\n")
cat("Duplicate rows:", sum(duplicated(df)), "\n")
cat("\n")

cat("--- Categorical Columns Unique Values ---\n")
cat("Countries:", length(unique(df$Country)), "\n")
cat("Industries:", length(unique(df$Industry)), "\n")
cat("Tools:", length(unique(df$`GenAI Tool`)), "\n")
cat("\n")

cat("--- Numerical Summaries ---\n")
print(summary(select(df, where(is.numeric))))
cat("\n")

cat("--- Negative Values Check ---\n")
cat("Negative Employees Impacted:", sum(df$`Number of Employees Impacted` < 0, na.rm = TRUE), "\n")
cat("Negative New Roles:", sum(df$`New Roles Created` < 0, na.rm = TRUE), "\n")
cat("Negative Training Hours:", sum(df$`Training Hours Provided` < 0, na.rm = TRUE), "\n")
