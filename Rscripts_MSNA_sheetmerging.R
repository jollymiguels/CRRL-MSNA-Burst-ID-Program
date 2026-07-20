#install packages
install.packages("tidyverse")
install.packages("readxl")

#run packages
library(tidyverse)
library(readxl)

#copy pathway into this section of code and change all backslashes to forward slashes
#anytime you tell R to look for a file it will look in this folder
setwd("#enterfilepathway between quotation marks")

#repeat this step for all participants
##first specify file name then which sheet is you want the data to extracted from
participant1  <- read_excel("#enterfile name in quotation marks",   sheet = "CumulativeSheet")
participant2  <- read_excel("enterfile name in quotation marks", sheet = "CumulativeSheet")
#include as many participants as necessary

#make sure these are in numerical order based on participant SUBID
cumulativeworkbook <- bind_rows(
  participant1, participant2
)

write.csv(cumulativeworkbook, "MSNATransductionManuscript_Cumulative_MSNA_Workbook.csv")
#you may change file name in the line above (24) between quotation marks

#highlight entire script before you run