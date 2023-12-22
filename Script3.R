#How important is academic event metadata for effective organization?
library(ggplot2)
library(reshape2)

data <- data.frame(
  Importance = factor(c('Not Important', 'Slightly important', 'Moderately important', 'Very Important', 'Extremely Important'),
                      levels = c('Not Important', 'Slightly important', 'Moderately important', 'Very Important', 'Extremely Important')),
  Organizers = c(5.34, 10.68, 21.73, 30.20, 32.04),
  Scholars = c(2.20, 9.35, 22.42, 37.55, 28.47)
)

long_data <- melt(data, id.vars = 'Importance', variable.name = 'Group', value.name = 'Percentage')

ggplot(long_data, aes(x = Importance, y = Percentage, fill = Group)) +
  geom_bar(stat = 'identity', position = 'dodge', width = 0.7) +
  coord_flip() + # This flips the axes for horizontal bars
  scale_y_continuous(breaks = seq(0, 50, by = 5)) + # Define breaks on the y-axis (after flipping)
  scale_fill_manual(values = c("Organizers" = "orange", "Scholars" = "blue")) +
  theme_minimal(base_size = 14) + # Set base font size to 14
  labs(y = 'Percentage (%)', x = 'Importance', fill = 'Group') + # Correctly label the axes
  theme(axis.text.x = element_blank(), axis.ticks.x = element_blank(), # Remove x-axis text and ticks
        axis.title.x = element_blank()) # Remove x-axis title

#How complete and accurate is the metadata usually provided for academic events?
library(ggplot2)
library(dplyr)
library(tidyr)

data <- data.frame(
  Category = c("Fully unsatisfactory", "Unsatisfactory", "Almost satisfactory", "Second Unsatisfactory", "Fully satisfactory"),
  Organizers = c(23.39, 24.49, 17.13, 23.02, 11.97),
  Scholars = c(36.04, 31.09, 17.61, 12.24, 3.03)
)

long_data <- data %>% 
  pivot_longer(cols = -Category, names_to = "Group", values_to = "Percentage")

ggplot(long_data, aes(x = Category, y = Percentage, fill = Group)) +
  geom_bar(stat = "identity", position = position_dodge(), width = 0.7) +
  # geom_text(aes(label = sprintf("%.2f", Percentage)), 
  #           position = position_dodge(width = 0.7), 
  #           vjust = 0.5, 
  #           hjust = -0.1, 
  #           size = 4) +  # This line is commented out to remove labels
  coord_flip() +  # Make the chart horizontal
  theme_minimal() +
  scale_y_continuous(breaks = c(0.0, 10.0, 15.0, 20.0, 25.0, 30.0, 35.0, 40.0),
                     limits = c(0, 40)) + # Set Y-axis limits
  labs(x = "Scale",
       y = "Percentage (%)",
       fill = "Group")

#What is the current state of metadata in the area of academic events in Ukraine?
library(ggplot2)
library(dplyr)
library(tidyr)

data <- data.frame(
  State = factor(c("Very bad", "Bad", "Satisfactory", "Good", "Very Good"), 
                 levels = c("Very Good", "Good", "Satisfactory", "Bad", "Very bad")),
  Organizers = c(22.84, 32.78, 34.62, 5.89, 3.87),
  Scholars = c(39.75, 38.24, 12.10, 7.15, 2.75)
)

long_data <- data %>% 
  pivot_longer(cols = -State, names_to = "Group", values_to = "Percentage")

ggplot(long_data, aes(x = State, y = Percentage, fill = Group)) +
  geom_bar(stat = "identity", position = position_dodge(), width = 0.7) +
  # geom_text(aes(label = sprintf("%.2f", Percentage)), position = position_dodge(width = 0.7), hjust = -0.1, size = 3.5) +
  coord_flip() +  # Make the chart horizontal
  theme_minimal() +
  labs(x = "Scale",
       y = "Percentage (%)",
       fill = "Group") +
  scale_fill_manual(values = c("#0073C2FF", "#EFC000FF")) # Change the colors as desired


#Is it difficult for you to collect and manage academic event metadata? 
library(ggplot2)
library(dplyr)
library(tidyr)

data <- data.frame(
  Difficulty = factor(c("Very difficult", "Easy", "Moderate", "Difficult", "Very easy"),
                      levels = c("Very easy", "Difficult", "Moderate", "Easy", "Very difficult")),
  Organizers = c(11.05, 22.28, 5.71, 17.50, 43.46),
  Scholars = c(10.59, 6.19, 23.38, 15.96, 43.88)
)

long_data <- data %>% 
  pivot_longer(cols = -Difficulty, names_to = "Group", values_to = "Percentage")

ggplot(long_data, aes(x = Difficulty, y = Percentage, fill = Group)) +
  geom_bar(stat = "identity", position = position_dodge(), width = 0.7) +
  # geom_text(aes(label = sprintf("%.2f%%", Percentage)), position = position_dodge(width = 0.7), hjust = -0.1, size = 3.5) +
  coord_flip() +  # Make the chart horizontal
  theme_minimal() +
  labs(x = "Difficulty Level",
       y = "Percentage",
       fill = "Respondent Group") +
  scale_y_continuous(breaks = seq(0, 50, 5)) + # Adjust the scale if needed
  scale_fill_manual(values = c("Organizers" = "#1b9e77", "Scholars" = "#d95f02")) # Change the colors as desired

#How satisfied are you with the general quality of metadata of academic events in Ukraine?
library(ggplot2)
library(tidyr)
library(dplyr)

satisfaction_data <- data.frame(
  Satisfaction = factor(c('Very dissatisfied', 'Dissatisfied', 'Neutral', 'Satisfied', 'Very satisfied'),
                        levels = c('Very satisfied', 'Satisfied', 'Neutral', 'Dissatisfied', 'Very dissatisfied')),
  Organizers = c(3.87, 18.42, 17.86, 39.04, 20.81),
  Scholars = c(2.75, 8.67, 18.98, 45.80, 23.80)
)

long_data <- pivot_longer(satisfaction_data, cols = -Satisfaction, names_to = "Group", values_to = "Percentage")

ggplot(long_data, aes(x = Satisfaction, y = Percentage, fill = Group)) +
  geom_bar(stat = 'identity', position = position_dodge(width = 0.9)) +
  coord_flip() +  # Flip the coordinates for horizontal bars
  # geom_text(aes(label = sprintf("%.2f", Percentage)), position = position_dodge(width = 0.9), hjust = -0.25, color = "black") +
  scale_y_continuous(breaks = seq(0, 50, by = 5), limits = c(0, 50)) +  # Set breaks up to 50 with limits
  labs(x = 'Scale', y = 'Percentage (%)', fill = 'Group') +
  theme_minimal()  # Use a minimal theme for a cleaner look

ggsave("grouped_bar_chart_with_labels.png", width = 10, height = 8)

#How often do you experience mistakes or inaccuracies in the metadata of academic events?
library(ggplot2)
library(tidyr)
library(dplyr)

experience_data <- data.frame(
  Frequency = factor(c('Very seldom', 'Seldom', 'Occasionally', 'Frequently', 'Very often'),
                     levels = c('Very often', 'Frequently', 'Occasionally', 'Seldom', 'Very seldom')),
  Organizers = c(7.73, 40.70, 22.65, 25.05, 3.87),
  Scholars = c(6.74, 38.93, 26.00, 21.73, 6.60)
)

long_data <- pivot_longer(experience_data, cols = -Frequency, names_to = "Group", values_to = "Percentage")

ggplot(long_data, aes(x = Frequency, y = Percentage, fill = Group)) +
  geom_bar(stat = 'identity', position = position_dodge(width = 0.9)) +
  coord_flip() +  # Flip the coordinates for horizontal bars
  # geom_text(aes(label = sprintf("%.2f", Percentage)), position = position_dodge(width = 0.9), hjust = -0.25, color = "black") +
  scale_y_continuous(breaks = seq(0, 50, by = 5), limits = c(0, 50)) +  # Set breaks up to 50 with limits
  labs(x = 'Scale', y = 'Percentage (%)', fill = 'Group') +
  theme_minimal() +  # Use a minimal theme for a cleaner look
  scale_fill_manual(values = c("Organizers" = "dodgerblue", "Scholars" = "orange1"))  # Custom colors

ggsave("/mnt/data/grouped_bar_chart_experience_bright_colors.png", width = 10, height = 8)

#How important is it to improve the metadata quality for effective organization and participation in academic events?
library(ggplot2)
library(tidyr)
library(dplyr)

ggplot(long_data, aes(x = Importance, y = Percentage, fill = Group)) +
  geom_bar(stat = 'identity', position = position_dodge(width = 0.9)) +
  coord_flip() +
  scale_y_continuous(breaks = seq(0, 100, by = 10), limits = c(0, 100)) +
  labs(x = 'Importance Level', y = 'Percentage (%)', fill = 'Group') +
  theme_minimal() +
  scale_fill_manual(values = c("Organizers" = "magenta", "Scholars" = "cyan3"))

#What are the most important metadata fields for academic events (5 most important in your opinion (multiple choice answers)?
library(ggplot2)
library(reshape2)
library(scales)

metadata_fields <- data.frame(
  Category = c('Event Acronym', 'Event Description', 'Website', 'Event Organizer',
               'Event Subject', 'Event Type', 'Field', 'Venue', 'Registration Deadlines',
               'Participation Fee', 'External Links'),
  Organizers = c(0.17, 6.81, 42.01, 0.83, 8.11, 6.88, 8.62, 10.62, 142.39, 19.12, 2.47),
  Scholars = c(0.17, 6.84, 42.21, 0.83, 8.15, 6.91, 8.66, 10.67, 143.05, 19.21, 2.48)
)

long_metadata_fields <- melt(metadata_fields, id.vars = 'Category', variable.name = 'Group', value.name = 'Value')

color_palette <- colorRampPalette(c("white", "yellow", "blue", "red"))

heatmap_plot <- ggplot(long_metadata_fields, aes(x = Group, y = Category, fill = Value)) +
  geom_tile(color = "white") +
  scale_fill_gradientn(colours = color_palette(100)) +
  geom_text(aes(label = sprintf("%.2f", Value)), color = "black") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 0, vjust = 0.5, hjust=0.5),
        axis.text.y = element_text(hjust = 1),
        axis.title = element_blank(),
        legend.position = "right")

print(heatmap_plot)

ggsave("heatmap_custom_colors.png", plot = heatmap_plot, width = 8, height = 6)

#What criteria define a quality academic event (multiple choice answers)?
library(ggplot2)
library(reshape2)

criteria_data <- data.frame(
  Criteria = c(
    'Proven regular event', 'High quality of the publication', 'Famous key speakers',
    'Highly recognized event organizers', 'Organized by a reputable institution',
    'Affiliated with a reputable University/Research institution', 'Specialized event',
    'Free participation', 'Recommendation of colleagues', 'High-quality website',
    'Comfortable location', 'Attended colleagues'
  ),
  Organizers = c(
    2.1869196, 1.7460745, 5.9740946, 0.7622353, 4.8840309,
    9.2655149, 2.9012899, 5.3200349, 1.3734, 0.0009091,
    1.2266758, 16.8313028
  ),
  Scholars = c(
    1.8135239, 1.4479489, 4.9540748, 0.6320909, 4.0501291,
    7.6835165, 2.4059222, 4.4116896, 1.1389051, 0.0007539,
    1.0172326, 13.9575182
  )
)

long_criteria_data <- melt(criteria_data, id.vars = 'Criteria', variable.name = 'Group', value.name = 'ChiSquare')

heatmap_plot <- ggplot(long_criteria_data, aes(x = Group, y = Criteria, fill = ChiSquare)) +
  geom_tile(color = "white") + 
  scale_fill_gradient2(low = "blue", high = "red", mid = "yellow", midpoint = median(long_criteria_data$ChiSquare), space = "Lab") +
  geom_text(aes(label = round(ChiSquare, 2)), color = "black", size = 3) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 0), 
        axis.title = element_blank(),
        legend.position = "right")

print(heatmap_plot)

ggsave("heatmap_criteria.png", heatmap_plot, width = 12, height = 10)

#In your opinion, what documents/data about academic events should be placed in the public domain in the profile of the academic event (multiple choice answers)?
library(ggplot2)
library(reshape2)

documents_data <- data.frame(
  Document = c(
    'Information document about academic event', 'Event program', 'Article',
    'Conference proceedings', 'Presentations', 'Educational material',
    'Resolution of the event', 'Poster', 'Video recording',
    'Audio recording', 'Certificate', 'All points'
  ),
  Organizers = c(
    1.112046, 0.002518, 13.273418, 4.384585, 2.349348,
    1.15919, 1.964955, 0.494715, 4.630676, 2.148353,
    0.279502, 7.801248
  ),
  Scholars = c(
    1.195378, 0.002707, 14.268082, 4.713151, 2.5254,
    1.246056, 2.112202, 0.531788, 4.977683, 2.309343,
    0.300447, 8.385846
  )
)

long_documents_data <- melt(documents_data, id.vars = 'Document', variable.name = 'Group', value.name = 'ChiSquare')

heatmap_plot <- ggplot(long_documents_data, aes(x = Group, y = Document, fill = ChiSquare)) +
  geom_tile(color = "white") +
  scale_fill_gradientn(colours = c("white", "yellow", "blue", "red")) +
  geom_text(aes(label = round(ChiSquare, 2)), size = 3, color = "black") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 0), 
        axis.title = element_blank(),
        legend.position = "right")

print(heatmap_plot)

ggsave("heatmap_documents.png", heatmap_plot, width = 12, height = 10)


#What are the most important metadata fields for academic events (5 most important in your opinion) (multiple choice answers)?
library(ggplot2)
library(reshape2)

metadata_fields <- data.frame(
  Metadata = c(
    'Event Acronym', 'Event description', 'Website', 'Event Organizer', 'Event subject',
    'Event type', 'Field', 'Venue', 'Registration deadlines', 'Participation fee', 'External links'
  ),
  Organizers = c(5.23, 14.04, 7.14, 12.27, 13.91, 10.46, 10.26, 4.41, 13.05, 3.45, 5.79),
  Scholars = c(4.89, 10.70, 14.97, 11.13, 10.31, 13.78, 13.97, 7.27, 1.39, 7.10, 4.49)
)

long_metadata_fields <- melt(metadata_fields, id.vars = 'Metadata', variable.name = 'Group', value.name = 'Percentage')

bar_chart <- ggplot(long_metadata_fields, aes(x = Metadata, y = Percentage, fill = Group)) +
  geom_bar(stat = 'identity', position = 'dodge') +
  coord_flip() +
  scale_fill_manual(values = c("Organizers" = "orange", "Scholars" = "dodgerblue")) +
  scale_y_continuous(breaks = seq(0, 20, 5), limits = c(0, 20)) +  # Set breaks and limits on the y-axis
  labs(y = 'Percentage (%)', x = 'Metadata fields', fill = 'Group') +
  theme_minimal() +
  theme(text = element_text(size = 12), axis.title = element_text(size = 14), axis.text = element_text(size = 12))  # Increase font size

print(bar_chart)

ggsave("grouped_bar_chart_vibrant.png", plot = bar_chart, width = 12, height = 10)

#If the academic event has a funding organization (sponsor), which metadata do you think are important? 
library(ggplot2)
library(reshape2)

sponsorship_data <- data.frame(
  Metadata = c(
    'Information about sponsors', 
    'Agreement with a national organization', 
    'Own initiative', 
    'Agreement with central executive authority and Academy of Sciences', 
    'Free of charge', 
    'Agreement with a global customer', 
    'Hard to answer'
  ),
  Organizers = c(2.21, 16.21, 9.58, 35.91, 15.10, 11.60, 9.39),
  Scholars = c(1.38, 9.22, 12.38, 36.73, 30.40, 4.40, 5.50)
)

long_sponsorship_data <- melt(sponsorship_data, id.vars = 'Metadata', variable.name = 'Group', value.name = 'Percentage')

bar_colors <- c("Organizers" = "#FF6666", "Scholars" = "#6666FF") # Bright red and blue

ggplot(long_sponsorship_data, aes(x = Metadata, y = Percentage, fill = Group)) +
  geom_bar(stat = 'identity', position = 'dodge') +
  coord_flip() + 
  scale_fill_manual(values = bar_colors) +
  labs(y = 'Percentage (%)', x = 'Category', fill = 'Group') +
  theme_minimal() +
  theme(axis.title = element_text(size = 14), 
        axis.text = element_text(size = 14),
        legend.title = element_text(size = 14),
        legend.text = element_text(size = 14)) +
  scale_y_continuous(breaks = seq(0, max(long_sponsorship_data$Percentage) + 5, by = 5), 
                     limits = c(0, max(long_sponsorship_data$Percentage) + 5)) # Set breaks dynamically based on data

ggsave("grouped_bar_chart_sponsorship_data.png", plot = last_plot(), width = 12, height = 10)

#What persistent identifiers (PIDs should be considered in the field of scientific activities (multiple choice answers)?
library(ggplot2)
library(reshape2)

pid_data <- data.frame(
  PID = c(
    'ORCID', 'ResearcherID | Web of Science', 'DOI', 'ISSN', 'ISBN', 
    'ROR', 'URN', 'PMID', 'GDPR'
  ),
  Organizers = c(30.44, 18.59, 30.05, 9.00, 7.58, 0.71, 1.49, 1.42, 0.71),
  Scholars = c(36.75, 17.01, 2.19, 19.86, 18.79, 2.43, 1.01, 0.89, 1.07)
)

long_pid_data <- melt(pid_data, id.vars = 'PID', variable.name = 'Group', value.name = 'Percentage')

bar_colors <- c("Organizers" = "#00FF00", "Scholars" = "#9A0EEA") # Bright green and purple

ggplot(long_pid_data, aes(x = PID, y = Percentage, fill = Group)) +
  geom_bar(stat = 'identity', position = 'dodge') +
  coord_flip() + 
  scale_fill_manual(values = bar_colors) +
  labs(y = 'Percentage (%)', x = 'Category', fill = 'Group') +
  theme_minimal() +
  theme(axis.title = element_text(size = 12), 
        axis.text = element_text(size = 12),
        legend.title = element_text(size = 12),
        legend.text = element_text(size = 12)) +
  scale_y_continuous(breaks = seq(0, 40, by = 5), limits = c(0, 40)) # Adjust the breaks up to 40

ggsave("grouped_bar_chart_pids_vibrant.png", plot = last_plot(), width = 12, height = 10)


#What methods or tools for collecting and analyzing academic event metadata do you prefer?
library(ggplot2)
library(reshape2)

metadata_methods <- data.frame(
  Method = c(
    'Manual entry', 'Use of specialized software products', 
    'Automated data collection', 'Combination of several methods', 'Other'
  ),
  Organizers = c(20.44, 47.88, 9.21, 14.36, 8.10),
  Scholars = c(8.39, 48.14, 17.74, 21.73, 3.99)
)

long_metadata_methods <- melt(metadata_methods, id.vars = 'Method', variable.name = 'Group', value.name = 'Percentage')

bar_colors <- c("Organizers" = "#FF7F50", "Scholars" = "#6495ED") # Coral and Cornflower Blue colors

ggplot(long_metadata_methods, aes(x = Method, y = Percentage, fill = Group)) +
  geom_bar(stat = 'identity', position = 'dodge') +
  coord_flip() + 
  scale_fill_manual(values = bar_colors) +
  labs(y = 'Percentage (%)', x = 'Category', fill = 'Group') +
  theme_minimal() +
  theme(axis.title = element_text(size = 12), 
        axis.text = element_text(size = 12),
        legend.title = element_text(size = 12),
        legend.text = element_text(size = 12)) +
  scale_y_continuous(breaks = seq(0, 55, by = 5), limits = c(0, 55)) # Set breaks up to 55 with increments of 5

ggsave("grouped_bar_chart_metadata_methods.png", plot = last_plot(), width = 12, height = 8)

#What criteria define a quality academic event (multiple choice answers)?
library(ggplot2)
library(reshape2)

event_criteria_data <- data.frame(
  Criteria = c(
    'Proven regular event', 'High quality of the publication', 'Famous key speakers',
    'Highly recognized event organizers', 'Organized by a reputable institution',
    'Affiliated with a reputable University/Research institution', 'Specialized event',
    'Free participation', 'Recommendation of colleagues', 'High-quality website',
    'Comfortable location', 'Attended colleagues'
  ),
  Organizers = c(13.91, 18.34, 16.78, 9.10, 7.24, 11.53, 8.58, 2.51, 4.33, 4.07, 0.82, 2.77),
  Scholars = c(16.10, 20.56, 13.19, 10.14, 9.71, 7.94, 6.79, 4.13, 5.32, 4.10, 1.26, 0.75)
)

long_event_criteria_data <- melt(event_criteria_data, id.vars = 'Criteria', variable.name = 'Group', value.name = 'Percentage')

bar_colors <- c("Organizers" = "#E41A1C", "Scholars" = "#377EB8") # Bright red and blue

ggplot(long_event_criteria_data, aes(x = Criteria, y = Percentage, fill = Group)) +
  geom_bar(stat = 'identity', position = 'dodge') +
  coord_flip() + 
  scale_fill_manual(values = bar_colors) +
  labs(y = 'Percentage (%)', x = 'Category', fill = 'Group') +
  theme_minimal() +
  theme(axis.title = element_text(size = 12), 
        axis.text = element_text(size = 12),
        legend.title = element_text(size = 12),
        legend.text = element_text(size = 12)) +
  scale_y_continuous(breaks = seq(0, max(long_event_criteria_data$Percentage) + 5, by = 5), 
                     limits = c(0, max(long_event_criteria_data$Percentage) + 5)) # Adjust the breaks dynamically based on data

ggsave("grouped_bar_chart_event_criteria.png", plot = last_plot(), width = 12, height = 8)

#In your opinion, what documents/data about academic events should be placed in the public domain in the profile of the academic event (multiple choice answers)?
library(ggplot2)
library(reshape2)

document_data <- data.frame(
  Document = c(
    'Information document about academic event', 'Event program', 'Article',
    'Conference proceedings', 'Presentations', 'Educational material',
    'Resolution of the event', 'Poster', 'Video recording',
    'Audio recording', 'Certificate', 'All points'
  ),
  Organizers = c(20.87, 21.62, 4.96, 17.01, 7.52, 3.35, 8.27, 4.69, 3.86, 0.71, 2.32, 4.81),
  Scholars = c(22.90, 21.72, 8.89, 13.63, 5.88, 2.58, 6.69, 5.33, 5.80, 1.31, 2.67, 2.58)
)

long_document_data <- melt(document_data, id.vars = 'Document', variable.name = 'Group', value.name = 'Percentage')

bar_colors <- c("Organizers" = "#00FF00", "Scholars" = "#FF00FF") # Bright green and magenta

ggplot(long_document_data, aes(x = Document, y = Percentage, fill = Group)) +
  geom_bar(stat = 'identity', position = 'dodge') +
  coord_flip() + 
  scale_fill_manual(values = bar_colors) +
  labs(y = 'Percentage (%)', x = 'Category', fill = 'Group') +
  theme_minimal() +
  theme(axis.title = element_text(size = 12), 
        axis.text = element_text(size = 12),
        legend.title = element_text(size = 12),
        legend.text = element_text(size = 12)) +
  scale_y_continuous(breaks = seq(0, max(long_document_data$Percentage) + 5, by = 5), 
                     limits = c(0, max(long_document_data$Percentage) + 5)) # Adjust the breaks dynamically based on data

ggsave("grouped_bar_chart_documents.png", plot = last_plot(), width = 12, height = 8)

#What factors do you think might influence the quality of metadata for academic events (multiple choice answers)?
library(ggplot2)
library(reshape2)

metadata_quality_factors <- data.frame(
  Factors = c(
    'Lack of standardization in the description of activities', 
    'Lack of focus of organizers on the quality of metadata', 
    'Technical problems in creating and updating metadata', 
    'Lack of information resources and tools for organizers', 
    'Other factors'
  ),
  Organizers = c(20.72, 26.44, 25.32, 23.17, 4.35),
  Scholars = c(26.24, 25.33, 20.66, 23.58, 4.19)
)

long_metadata_quality_factors <- melt(metadata_quality_factors, id.vars = 'Factors', variable.name = 'Group', value.name = 'Percentage')

bar_colors <- c("Organizers" = "#1f78b4", "Scholars" = "#b2df8a") # Teal and Deep Pink colors

ggplot(long_metadata_quality_factors, aes(x = Factors, y = Percentage, fill = Group)) +
  geom_bar(stat = 'identity', position = 'dodge') +
  coord_flip() + 
  scale_fill_manual(values = bar_colors) +
  labs(y = 'Percentage (%)', x = 'Category', fill = 'Group') +
  theme_minimal() +
  theme(axis.title = element_text(size = 12), 
        axis.text = element_text(size = 12),
        legend.title = element_text(size = 12),
        legend.text = element_text(size = 12)) +
  scale_y_continuous(breaks = seq(0, max(long_metadata_quality_factors$Percentage) + 5, by = 5), 
                     limits = c(0, max(long_metadata_quality_factors$Percentage) + 5)) # Adjust the breaks dynamically based on data

ggsave("grouped_bar_chart_metadata_quality_factors.png", plot = last_plot(), width = 12, height = 8)