
set.seed(246) #reproducible

#vector of 5 species names of my choosing
species_names<-c(
  "Panthera leo", "Quercus robur", "Asteria rubens", 
  "Drosophila meanogaster", "Arabidopis Thaliana"
  
)

species_names #print species names

#vector of 100 species names using the 5 random species names chosen
Organism<-sample(species_names, size=100, replace=TRUE)

Organism #print the vector of 100 species names

#use log-normal distribution 
Limb_width <-rlnorm(100, meanlog=1, sdlog= 0.5)

head(Limb_width)
tail(Limb_width)
range(Limb_width)

#use log-normal distribution 
Limb_length <- rlnorm(100, meanlog = 3, sdlog = 0.5 )

head(Limb_length)
tail(Limb_length)
range(Limb_length)

#vector of observer names of my choosing

observers_name<-c("Ella B","Jessica L", "Sarah K" )

Observer <-sample(observers_name, size=100, replace= TRUE)

head(Observer)
table(Observer)

data<-data.frame(
  Organism = Organism,
  Limb_Width = round(Limb_width, 3),
  Limb_length= round(Limb_length, 3),
  Observer = Observer,
  stringsAsFactors = FALSE ) #this is so the names stay characters)
  
  write.csv(data, "data.csv", row.names = FALSE)

  head(data)
  tail(data)

