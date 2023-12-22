#Gender
# Load CSV from Github
data=read.csv("https://raw.githubusercontent.com/Sabishka10101/UA_Academic_Events/main/Gender.csv") 
print(data)

data <- data.frame(
  Gender = c("Female", "Male"),
  Organizers_N = c(348, 195),
  Organizers_Percent = c(64.09, 35.91),
  Scholars_N = c(465, 262),
  Scholars_Percent = c(63.96, 36.04),
  Total_N = c(813, 457),
  Total_Percent = c(64.02, 35.98)
)

#University type
# Load CSV from Github
data=read.csv("https://raw.githubusercontent.com/Sabishka10101/UA_Academic_Events/main/University%20type.csv") 
print(data)

data <- data.frame(
  University_type = c("Public", "Private"),
  Organizers_N = c(76, 32),
  Scholars_N = c(123, 22),
  Total_N = c(199, 54)
)

#Position
# Load CSV from Github
data=read.csv("https://raw.githubusercontent.com/Sabishka10101/UA_Academic_Events/main/Position.csv") 
print(data)

data <- data.frame(
  Position = c("Associate professor", "Head of the department", "Research assistant", "Administration of the institution", "PhD students", "Other employees of other departments"),
  Organizers_N = c(284, 113, 72, 27, 36, 11),
  Organizers_Percent = c(52.30, 20.81, 13.26, 4.97, 6.63, 2.03),
  Scholars_N = c(145, 133, 327, 30, 60, 32),
  Scholars_Percent = c(19.94, 18.29, 44.98, 4.13, 8.25, 4.40),
  Total_N = c(429, 246, 399, 57, 96, 43),
  Total_Percent = c(33.78, 19.37, 31.42, 4.49, 7.56, 3.39)
)

#Discipline
# Load CSV from Github
data=read.csv("https://raw.githubusercontent.com/Sabishka10101/UA_Academic_Events/main/What%20are%20the%20most%20important%20metadata%20fields%20for%20academic%20events%20(5%20most%20important%20in%20your%20opinion%20(multiple%20choice%20answers).csv") 
print(data)

#Frequency_AE
# Load CSV from Github
data=read.csv("https://raw.githubusercontent.com/Sabishka10101/UA_Academic_Events/main/Frequency%20of%20academic%20events.csv") 
print(data)

data <- data.frame(
  Frequency = c("1 time a year", "2-5 times a year", "5-10 times a year", "> 10 times a year"),
  Organizers_N = c(230, 243, 34, 36),
  Organizers_Percent = c(42.36, 44.75, 6.26, 6.63),
  Scholars_N = c(215, 320, 80, 112),
  Scholars_Percent = c(29.57, 44.02, 11.00, 15.41),
  Total_N = c(445, 563, 114, 148),
  Total_Percent = c(35.04, 44.33, 8.98, 11.65)
)

#Format_AE
# Load CSV from Github
data=read.csv("https://raw.githubusercontent.com/Sabishka10101/UA_Academic_Events/main/Preferred%20format%20for%20academic%20events.csv") 
print(data)

data <- data.frame(
  Format = c("Hybrid", "Offline", "Online"),
  Organizers_N = c(78, 109, 356),
  Organizers_Percent = c(14.36, 20.07, 65.56),
  Scholars_N = c(217, 53, 457),
  Scholars_Percent = c(29.85, 7.29, 62.86),
  Total_N = c(295, 162, 813),
  Total_Percent = c(23.22834646, 12.75590551, 64.01574803)
)

#Role
# Load CSV from Github
data=read.csv("https://raw.githubusercontent.com/Sabishka10101/UA_Academic_Events/main/Role_AE.csv") 
print(data)

data <- data.frame(
  Role = c("Chair", "Contact person", "Deputy Chair", "Event moderator", "Member", "Participant", 
           "Responsible executive", "Speaker", "Co-organizer"),
  Organizers_N = c(68, 98, 134, 56, 66, 0, 83, 0, 38),
  Organizers_Percent = c(12.52, 18.05, 24.68, 10.31, 12.15, 0.00, 15.29, 0.00, 7.00),
  Scholars_N = c(0, 0, 0, 0, 0, 425, 0, 302, 0),
  Scholars_Percent = c(0.00, 0.00, 0.00, 0.00, 0.00, 58.46, 0.00, 41.54, 0.00),
  Total_N = c(68, 98, 134, 56, 66, 425, 83, 302, 38),
  Total_Percent = c(5.35, 7.72, 10.55, 4.41, 5.20, 33.46, 6.54, 23.78, 2.99)
)

#What are the most important metadata fields for academic events (5 most important in your opinion (multiple choice)?
# Load CSV from Github
data=read.csv("https://raw.githubusercontent.com/Sabishka10101/UA_Academic_Events/main/What%20are%20the%20most%20important%20metadata%20fields%20for%20academic%20events%20(5%20most%20important%20in%20your%20opinion%20(multiple%20choice%20answers).csv") 
print(data)

metadata_fields <- data.frame(
  `Metadata Field` = c(
    "Event Acronym", "Event description", "Website", "Event Organizer",
    "Event subject", "Event type", "Field", "Venue",
    "Registration deadlines", "Participation fee", "External links"
  ),
  `Organizers N` = c(159, 427, 217, 373, 423, 318, 312, 134, 397, 105, 176),
  `Percentage %` = c(5.23, 14.04, 7.14, 12.27, 13.91, 10.46, 10.26, 4.41, 13.05, 3.45, 5.79),
  `Scholars N` = c(148, 324, 453, 337, 312, 417, 423, 220, 42, 215, 136),
  `Percentage %` = c(4.89, 10.70, 14.97, 11.13, 10.31, 13.78, 13.97, 7.27, 1.39, 7.10, 4.49),
  `Total N` = c(307, 751, 670, 710, 735, 735, 735, 354, 439, 320, 312),
  `Percentage %` = c(5.06, 12.38, 11.04, 11.70, 12.11, 12.11, 12.11, 5.83, 7.23, 5.27, 5.14)
)

#If the academic event has a funding organization (sponsor), which metadata do you think are important?      
# Load CSV from Github
data=read.csv("https://raw.githubusercontent.com/Sabishka10101/UA_Academic_Events/main/If%20the%20academic%20event%20has%20a%20funding%20organization%20(sponsor)%2C%20which%20metadata%20do%20you%20think%20are%20important.csv") 
print(data)
funding_metadata <- data.frame(
  `Category` = c(
    "Information about sponsors",
    "Agreement with a national organization (foundation, association, corporation, etc.)",
    "Own initiative (if the work is performed on one's own initiative at the expense of the event organizer or free of charge)",
    "Agreement (order with the central executive authority and the Academy of Sciences (the main spending units for the event))",
    "Free of charge (agreement on scientific and technical cooperation, etc.)",
    "Agreement with a global customer",
    "Hard to answer"
  ),
  `Organizers N` = c(12, 88, 52, 195, 82, 63, 51),
  `Percentage %` = c(2.21, 16.21, 9.58, 35.91, 15.10, 11.60, 9.39),
  `Scholars N` = c(10, 67, 90, 267, 221, 32, 40),
  `Percentage %` = c(1.38, 9.22, 12.38, 36.73, 30.40, 4.40, 5.50),
  `Total N` = c(22, 155, 142, 462, 303, 95, 91),
  `Percentage %` = c(1.73, 12.20, 11.18, 36.38, 23.86, 7.48, 7.17)
)


#What persistent identifiers (PIDs) should be considered in the field of scientific activities (multiple choice answers)?
# Load CSV from Github
data=read.csv("https://raw.githubusercontent.com/Sabishka10101/UA_Academic_Events/main/What%20persistent%20identifiers%20(PIDs%20should%20be%20considered%20in%20the%20field%20of%20scientific%20activities%20(multiple%20choice%20answers).csv") 
print(data)
pids_data <- data.frame(
  `Identifier` = c(
    "ORCID (Open Researcher and Contributor ID)", "ResearcherID | Web of Science",
    "DOI (Digital Object Identifier System)", "ISSN (International Standard Serial Number)",
    "ISBN (International ISBN Agency)", "ROR (Research Organization Registry)",
    "URN", "PMID (PubMed Identifier)", "GDPR (General Data Protection Regulation)"
  ),
  `Organizers N` = c(470, 287, 464, 139, 117, 11, 23, 22, 11),
  `Percentage %` = c(30.44, 18.59, 30.05, 9.00, 7.58, 0.71, 1.49, 1.42, 0.71),
  `Scholars N` = c(620, 287, 37, 335, 317, 41, 17, 15, 18),
  `Percentage %` = c(36.75, 17.01, 2.19, 19.86, 18.79, 2.43, 1.01, 0.89, 1.07),
  `Total N` = c(1090, 574, 501, 474, 434, 52, 40, 37, 29),
  `Percentage %` = c(33.74, 17.77, 15.51, 14.67, 13.43, 1.61, 1.24, 1.15, 0.90)
)

#What methods or tools for collecting and analyzing academic event metadata do you prefer?  
# Load CSV from Github
data=read.csv("https://raw.githubusercontent.com/Sabishka10101/UA_Academic_Events/main/What%20methods%20or%20tools%20for%20collecting%20and%20analyzing%20academic%20event%20metadata%20do%20you%20prefer.csv") 
print(data)
methods_data <- data.frame(
  Category = c(
    "Manual entry",
    "Use of specialized software products",
    "Automated data collection",
    "Combination of several methods",
    "Other"
  ),
  `Organizers N` = c(111, 260, 50, 78, 44),
  `Percentage %` = c(20.44, 47.88, 9.21, 14.36, 8.10),
  `Scholars N` = c(61, 350, 129, 158, 29),
  `Percentage %` = c(8.39, 48.14, 17.74, 21.73, 3.99),
  `Total N` = c(172, 610, 179, 236, 73),
  `Percentage %` = c(13.54, 48.03, 14.09, 18.58, 5.75)
)


#How important is academic event metadata for effective organization?
# Load CSV from Github
data=read.csv("https://raw.githubusercontent.com/Sabishka10101/UA_Academic_Events/main/How%20important%20is%20academic%20event%20metadata%20for%20effective%20organization.csv") 
print(data)
importance_data <- data.frame(
  Likert Scale = c(
    "1 (Not Important)",
    "2 (Slightly important)",
    "3 (Moderately important)",
    "4 (Very Important)",
    "5 (Extremely Important)"
  ),
  `Organizers N` = c(29, 58, 118, 164, 174),
  `Percentage %` = c(5.34, 10.68, 21.73, 30.20, 32.04),
  `Scholars N` = c(16, 68, 163, 273, 207),
  `Percentage %` = c(2.20, 9.35, 22.42, 37.55, 28.47),
  `Total N` = c(45, 126, 281, 437, 381),
  `Percentage %` = c(3.54, 9.92, 22.13, 34.41, 30.00)
)


#How complete and accurate is the metadata usually provided for academic events?
# Load CSV from Github
data=read.csv("https://raw.githubusercontent.com/Sabishka10101/UA_Academic_Events/main/How%20complete%20and%20accurate%20is%20the%20metadata%20usually%20provided%20for%20academic%20events.csv") 
print(data)
metadata_accuracy <- data.frame(
  Likert Scale = c(
    "1 (Fully unsatisfactory)",
    "2 (Satisfactory)",
    "3 (Almost satisfactory)",
    "4 (Unsatisfactory)",
    "5 (Fully satisfactory)"
  ),
  `Organizers N` = c(127, 133, 93, 125, 65),
  `Percentage %` = c(23.39, 24.49, 17.13, 23.02, 11.97),
  `Scholars N` = c(262, 226, 128, 89, 22),
  `Percentage %` = c(36.04, 31.09, 17.61, 12.24, 3.03),
  `Total N` = c(389, 359, 221, 214, 87),
  `Percentage %` = c(30.63, 28.27, 17.40, 16.85, 6.85)
)

#Is it difficult for you to collect and manage academic event metadata?
# Load CSV from Github
data=read.csv("https://raw.githubusercontent.com/Sabishka10101/UA_Academic_Events/main/Is%20it%20difficult%20for%20you%20to%20collect%20and%20manage%20academic%20event%20metadata.csv") 
print(data)
difficulty_data <- data.frame(
  Likert Scale = c("1 (Very difficult)", "2 (Easy)", "3 (Moderate)", "4 (Difficult)", "5 (Very easy)"),
  `Organizers N` = c(60, 121, 31, 95, 236),
  `Percentage %` = c(11.05, 22.28, 5.71, 17.50, 43.46),
  `Scholars N` = c(77, 45, 170, 116, 319),
  `Percentage %` = c(10.59, 6.19, 23.38, 15.96, 43.88),
  `Total N` = c(137, 166, 201, 211, 555),
  `Percentage %` = c(10.79, 13.07, 15.83, 16.61, 43.70)
)


#What is the current state of metadata in the area of academic events in Ukraine?
# Load CSV from Github
data=read.csv("https://raw.githubusercontent.com/Sabishka10101/UA_Academic_Events/main/What%20is%20the%20current%20state%20of%20metadata%20in%20the%20area%20of%20academic%20events%20in%20Ukraine.csv") 
print(data)
state_metadata_ukraine <- data.frame(
  `Lkert Scale` = c("1 (Very bad)", "2 (Bad)", "3 (Satisfactory)", "4 (Good)", "5 (Very Good)"),
  `Organizers N` = c(124, 178, 188, 32, 21),
  `Percentage %` = c(22.84, 32.78, 34.62, 5.89, 3.87),
  `Scholars N` = c(289, 278, 88, 52, 20),
  `Percentage %` = c(39.75, 38.24, 12.10, 7.15, 2.75),
  `Total N` = c(413, 456, 276, 84, 41),
  `Percentage %` = c(32.52, 35.91, 21.73, 6.61, 3.23)
)

#What criteria define a quality academic event (multiple choice answers)?
# Load CSV from Github
data=read.csv("https://raw.githubusercontent.com/Sabishka10101/UA_Academic_Events/main/What%20criteria%20define%20a%20quality%20academic%20event%20(multiple%20choice%20answers).csv") 
print(data)
criteria_data <- data.frame(
  Criteria = c("Proven regular event", "High quality of the publication", "Famous key speakers", 
               "Highly recognized event organizers", "Organized by a reputable institution", 
               "Affiliated with a reputable University/Research institution", "Specialized event", 
               "Free participation", "Recommendation of colleagues", "High-quality website", 
               "Comfortable location", "Attended colleagues"),
  Organizers_N = c(321, 423, 387, 210, 167, 266, 198, 58, 100, 94, 19, 64),
  Organizers_Percentage = c(13.91, 18.34, 16.78, 9.10, 7.24, 11.53, 8.58, 2.51, 4.33, 4.07, 0.82, 2.77),
  Scholars_N = c(448, 572, 367, 282, 270, 221, 189, 115, 148, 114, 35, 21),
  Scholars_Percentage = c(16.10, 20.56, 13.19, 10.14, 9.71, 7.94, 6.79, 4.13, 5.32, 4.10, 1.26, 0.75),
  Total_N = c(769, 995, 754, 492, 437, 487, 387, 173, 248, 208, 54, 85),
  Total_Percentage = c(15.11, 19.55, 14.82, 9.67, 8.59, 9.57, 7.60, 3.40, 4.87, 4.09, 1.06, 1.67)
)

#In your opinion, what documents/data about academic events should be placed in the public domain in the profile of the academic event (multiple choice answers)?
# Load CSV from Github
data=read.csv("https://raw.githubusercontent.com/Sabishka10101/UA_Academic_Events/main/In%20your%20opinion%2C%20what%20documentsdata%20about%20academic%20events%20should%20be%20placed%20in%20the%20public%20domain%20in%20the%20profile%20of%20the%20academic%20event%20(multiple%20choice%20answers).csv") 
print(data)
documents_data <- data.frame(
  Document = c(
    "Information document about academic event", 
    "Event program", 
    "Article", 
    "Conference proceedings", 
    "Presentations", 
    "Educational material", 
    "Resolution of the event", 
    "Poster", 
    "Video recording", 
    "Audio recording", 
    "Certificate", 
    "All points"
  ),
  Organizers_N = c(530, 549, 126, 432, 191, 85, 210, 119, 98, 18, 59, 122),
  Organizers_Percentage = c(20.87, 21.62, 4.96, 17.01, 7.52, 3.35, 8.27, 4.69, 3.86, 0.71, 2.32, 4.81),
  Scholars_N = c(541, 513, 210, 322, 139, 61, 158, 126, 137, 31, 63, 61),
  Scholars_Percentage = c(22.90, 21.72, 8.89, 13.63, 5.88, 2.58, 6.69, 5.33, 5.80, 1.31, 2.67, 2.58),
  Total_N = c(1071, 1062, 336, 754, 330, 146, 368, 245, 235, 49, 122, 183),
  Total_Percentage = c(21.85, 21.67, 6.86, 15.38, 6.73, 2.98, 7.51, 5.00, 4.79, 1.00, 2.49, 3.73)
)

#What factors do you think might influence the quality of metadata for academic events (multiple choice answers)?
# Load CSV from Github
data=read.csv("https://raw.githubusercontent.com/Sabishka10101/UA_Academic_Events/main/What%20factors%20do%20you%20think%20might%20influence%20the%20quality%20of%20metadata%20for%20academic%20events%20(multiple%20choice%20answers).csv") 
print(data)
metadata_quality_factors <- data.frame(
  Factor = c(
    "Lack of standardization in the description of activities",
    "Lack of focus of organizers on the quality of metadata",
    "Technical problems in creating and updating metadata",
    "Lack of information resources and tools for organizers",
    "Other factors"
  ),
  Organizers_N = c(424, 541, 518, 474, 89),
  Organizers_Percentage = c(20.72, 26.44, 25.32, 23.17, 4.35),
  Scholars_N = c(601, 580, 473, 540, 96),
  Scholars_Percentage = c(26.24, 25.33, 20.66, 23.58, 4.19),
  Total_N = c(1025, 1121, 991, 1014, 185),
  Total_Percentage = c(23.64, 25.85, 22.86, 23.39, 4.27)
)

#How satisfied are you with the general quality of metadata of academic events in Ukraine?
# Load CSV from Github
data=read.csv("https://raw.githubusercontent.com/Sabishka10101/UA_Academic_Events/main/How%20satisfied%20are%20you%20with%20the%20general%20quality%20of%20metadata%20of%20academic%20events%20in%20Ukraine.csv") 
print(data)
satisfaction_data <- data.frame(
  Category = c("1 (Very dissatisfied)", "2 (Dissatisfied)", "3 (Neutral)", "4 (Satisfied)", "5 (Very satisfied)"),
  Organizers_N = c(21, 100, 97, 212, 113),
  Organizers_Percentage = c(3.87, 18.42, 17.86, 39.04, 20.81),
  Scholars_N = c(20, 63, 138, 333, 173),
  Scholars_Percentage = c(2.75, 8.67, 18.98, 45.80, 23.80),
  Total_N = c(41, 163, 235, 545, 286),
  Total_Percentage = c(3.24, 12.83, 18.50, 42.91, 22.52)
)

#How often do you experience mistakes or inaccuracies in the metadata of academic events?
# Load CSV from Github
data=read.csv("https://raw.githubusercontent.com/Sabishka10101/UA_Academic_Events/main/How%20often%20do%20you%20experience%20mistakes%20or%20inaccuracies%20in%20the%20metadata%20of%20academic%20events.csv") 
print(data)
mistakes_data <- data.frame(
  Category = c("1 (Very seldom)", "2 (Seldom)", "3 (Occasionally)", "4 (Frequently)", "5 (Very often)"),
  Organizers_N = c(42, 221, 123, 136, 21),
  Organizers_Percentage = c(7.73, 40.70, 22.65, 25.05, 3.87),
  Scholars_N = c(49, 283, 189, 158, 48),
  Scholars_Percentage = c(6.74, 38.93, 26.00, 21.73, 6.60),
  Total_N = c(91, 504, 312, 294, 69),
  Total_Percentage = c(7.17, 39.69, 24.57, 23.15, 5.43)
)

#How important is it to improve the metadata quality for effective organization and participation in academic events?
# Load CSV from Github
data=read.csv("https://raw.githubusercontent.com/Sabishka10101/UA_Academic_Events/main/How%20important%20is%20it%20to%20improve%20the%20metadata%20quality%20for%20effective%20organization%20and%20participation%20in%20academic%20events.csv") 
print(data)
importance_metadata_quality <- data.frame(
  Importance_Level = c("1 (Very seldom)", "2 (Seldom)", "3 (Occasionally)", "4 (Frequently)", "5 (Very often)"),
  Organizers_N = c(2, 4, 6, 70, 461),
  Organizers_Percentage = c(0.37, 0.74, 1.10, 12.89, 84.90),
  Scholars_N = c(0, 3, 9, 61, 654),
  Scholars_Percentage = c(0.00, 0.41, 1.24, 8.39, 89.96),
  Total_N = c(2, 7, 15, 131, 1115),
  Total_Percentage = c(0.16, 0.55, 1.18, 10.31, 87.80)
)