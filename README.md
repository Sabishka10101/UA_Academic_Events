Getting Started To work with this project, you need to have R and RStudio installed. Data and scripts are accessible via GitHub.

Installation

Clone the repository: git clone https://github.com/Sabishka10101/UA_Academic_Events.git
Open the R project file (*.Rproj) in RStudio.
Install the required R packages (if not already installed): install.packages(c("ggplot2", "dplyr", "tidyr", "reshape2", "scales"))
The project scripts perform the following functions:

1. 'script1.R' - Loads and displays data about the metadata of academic events.
2. 'script2.R' - Analyzes the data using the chi-squared test.
3. 'script3.R' - Visualizes the results using graphs.
Run each script sequentially to obtain the results.

Data data <- read.csv("https://raw.githubusercontent.com/Sabishka10101/UA_Academic_Events/main/your_data_file.csv")

Expected Results 1. Statistical analysis of the importance of various metadata. 2. Visualizations reflecting key aspects of the data.
