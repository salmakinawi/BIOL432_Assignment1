
library(dplyr) #download dyplyr library

library(readr) #download readr libary to read the data.csv

#load the data
data<-read_csv("data.csv")

#get information on laoded data
glimpse(data)
head(data)

#add the volume column, this will be a volume calculation for a cylinder model
#using cylinder model since organims are animals
data<- data %>%
  dplyr::mutate( 
    Volume = pi * (Limb_width / 2)^2 * Limb_length
  )

#check if volume was added
glimpse(data)
head(data)

#overwite
readr::write_csv(data, "data.csv")
