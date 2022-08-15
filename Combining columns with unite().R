library(tidyverse)
## Chicago Restaurant inspection file
### Using your own names for the columns 

names <- c('ID', 'DBName', 'AKName', 'License', 'FacilityType', 'Address', 
           'City', 'State', 'ZipCode', 'InspectionDate', 'InspectionType', 
           'Results', 'Violations', 'Latitute', 'Longitude', 'Location') 
glimpse(inspections) 
### you can see that all the variable names can be seen in the first line
### so we use the skip command to remove the first column or variable
inspections <- read_csv('http://594442.youcanlearnit.net/inspections.csv', 
                        col_names = names, skip = 1) 

glimpse(inspections)

### I want to combine the city and region together and call it region 

Regional_inspection <- unite(data = inspections, col = Region, City, State, 
                             sep = ", ")
glimpse(Regional_inspection)
### this has remove the city and the state but I want to keep them 
Regional_inspection <- unite(data = inspections, col = Region, City, State, 
                             sep = ", ", remove = FALSE)
glimpse(Regional_inspection)
