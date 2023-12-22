#What are the most important metadata fields for academic events (5 most important in your opinion (multiple choice)
organizers_counts <- c(159, 427, 217, 373, 423, 318, 312, 134, 397, 105, 176)
scholars_counts <- c(148, 324, 453, 337, 312, 417, 423, 220, 42, 215, 136)

contingency_table <- matrix(c(organizers_counts, scholars_counts), 
                            nrow = 2, 
                            byrow = TRUE,
                            dimnames = list(c("Organizers", "Scholars"),
                                            c("Event Acronym", "Event description", "Website", 
                                              "Event Organizer", "Event subject", "Event type", 
                                              "Field", "Venue", "Registration deadlines", 
                                              "Participation fee", "External links")))

chi_squared_results <- apply(contingency_table, 2, function(x) {
  test <- chisq.test(x)
  return(c(ChiSquare = test$statistic, PValue = test$p.value))
})

print(t(chi_squared_results))


#If the academic event has a funding organization (sponsor), which metadata do you think are important? 
counts <- matrix(
  c(12, 10, 88, 67, 52, 90, 195, 267, 82, 221, 63, 32, 51, 40),
  nrow = 7, byrow = TRUE)

# Add row and column names for clarity
rownames(counts) <- c(
  "Information about sponsors",
  "Agreement with a national organization",
  "Own initiative",
  "Agreement with the central executive authority",
  "Free of charge",
  "Agreement with a global customer",
  "Hard to answer")
colnames(counts) <- c("Organizers", "Scholars")

# Apply the chi-squared test to each row
chi_squared_tests <- apply(counts, 1, function(row) {
  chisq.test(matrix(row, nrow = 2, byrow = TRUE))$p.value
})

# Get the chi-squared statistic for each row
chi_squared_stats <- apply(counts, 1, function(row) {
  chisq.test(matrix(row, nrow = 2, byrow = TRUE))$statistic
})

# Combine the results into a data frame
results <- data.frame(
  Category = rownames(counts),
  ChiSquared = unlist(chi_squared_stats),
  PValue = unlist(chi_squared_tests)
)

# Print the results
print(results)


#What persistent identifiers (PIDs should be considered in the field of scientific activities (multiple choice answers)?
# Define the observed counts for organizers and scholars
pids <- c(470, 620, 287, 287, 464, 37, 139, 335, 117, 317, 11, 41, 23, 17, 22, 15, 11, 18)

# Add row names for clarity
row_names <- c(
  "ORCID",
  "ResearcherID | Web of Science",
  "DOI",
  "ISSN",
  "ISBN",
  "ROR",
  "URN",
  "PMID",
  "GDPR"
)

# Add column names for clarity
col_names <- c("Organizers", "Scholars")

# Create the matrix with row and column names
counts_matrix <- matrix(pids, nrow = 9, byrow = TRUE, dimnames = list(row_names, col_names))

# Perform chi-squared test for each PID category
chi_squared_results <- apply(counts_matrix, 1, function(counts) {
  test_result <- chisq.test(matrix(counts, nrow = 2))
  return(c(ChiSquare = test_result$statistic, PValue = test_result$p.value))
})

# Convert the results into a data frame for easier reading
results_df <- as.data.frame(t(chi_squared_results))
colnames(results_df) <- c("ChiSquare", "PValue")

# Print the results
print(results_df)


#What criteria define a quality academic event (multiple choice answers)?
if (!require(knitr)) install.packages("knitr")
library(knitr)

# Data
categories <- c("Proven regular event", "High quality of the publication", "Famous key speakers", 
                "Highly recognized event organizers", "Organized by a reputable institution", 
                "Affiliated with a reputable University/Research institution", "Specialized event", 
                "Free participation", "Recommendation of colleagues", "High-quality website", 
                "Comfortable location", "Attended colleagues")

organizers_counts <- c(321, 423, 387, 210, 167, 266, 198, 58, 100, 94, 19, 64)
scholars_counts <- c(448, 572, 367, 282, 270, 221, 189, 115, 148, 114, 35, 21)
total_counts <- c(769, 995, 754, 492, 437, 487, 387, 173, 248, 208, 54, 85)

# Total number of organizers and scholars
total_organizers <- sum(organizers_counts)
total_scholars <- sum(scholars_counts)

# Calculate expected counts and chi-square contributions
chi_square_contributions <- data.frame(Category = categories, 
                                       Organizers = numeric(length(categories)), 
                                       Scholars = numeric(length(categories)))

for (i in 1:length(categories)) {
  expected_organizers <- total_counts[i] * total_organizers / (total_organizers + total_scholars)
  expected_scholars <- total_counts[i] * total_scholars / (total_organizers + total_scholars)
  
  chi_square_contributions$Organizers[i] <- (organizers_counts[i] - expected_organizers)^2 / expected_organizers
  chi_square_contributions$Scholars[i] <- (scholars_counts[i] - expected_scholars)^2 / expected_scholars
}

# Format the output to avoid scientific notation
chi_square_contributions$Organizers <- format(chi_square_contributions$Organizers, scientific = FALSE)
chi_square_contributions$Scholars <- format(chi_square_contributions$Scholars, scientific = FALSE)

# Display the results using knitr::kable for a nicer format
knitr::kable(chi_square_contributions, format = "simple", caption = "Chi-Square Contributions by Category")


#In your opinion, what documents/data about academic events should be placed in the public domain in the profile of the academic event (multiple choice answers)?
if (!require(knitr)) install.packages("knitr")
library(knitr)

organizers_counts <- c(530, 549, 126, 432, 191, 85, 210, 119, 98, 18, 59, 122)
scholars_counts <- c(541, 513, 210, 322, 139, 61, 158, 126, 137, 31, 63, 61)
total_counts <- c(1071, 1062, 336, 754, 330, 146, 368, 245, 235, 49, 122, 183)

# Total number of responses from organizers and scholars
total_organizers <- 2539
total_scholars <- 2362

# Calculating expected counts and chi-square contributions
expected_organizers <- total_counts * total_organizers / (total_organizers + total_scholars)
expected_scholars <- total_counts * total_scholars / (total_organizers + total_scholars)

chi_square_contrib_organizers <- (organizers_counts - expected_organizers)^2 / expected_organizers
chi_square_contrib_scholars <- (scholars_counts - expected_scholars)^2 / expected_scholars

# Data frame to hold the results
results <- data.frame(
  Category = c("Information document about academic event", "Event program", "Article", 
               "Conference proceedings", "Presentations", "Educational material", 
               "Resolution of the event", "Poster", "Video recording", 
               "Audio recording", "Certificate", "All points"),
  Chi_Square_Contrib_Organizers = chi_square_contrib_organizers,
  Chi_Square_Contrib_Scholars = chi_square_contrib_scholars
)

# Formatting the results to avoid scientific notation
results$Chi_Square_Contrib_Organizers <- format(results$Chi_Square_Contrib_Organizers, scientific = FALSE)
results$Chi_Square_Contrib_Scholars <- format(results$Chi_Square_Contrib_Scholars, scientific = FALSE)

# Display the results using knitr::kable for a nicer format
knitr::kable(results, format = "simple", caption = "Chi-Square Contributions by Category")
