


best_50_2019 <- read.csv("data/top50.csv", stringsAsFactors = FALSE)

# These were the top 50 tracks in spotify from 2019

library("dplyr")  
library("stringr")


top_3_popularity <- best_50_2019 %>%
  arrange(-Popularity) %>%
  top_n(3)


pop_genre <- best_50_2019 %>% 
  filter(Genre == "pop") 


max_pop_track <- best_50_2019 %>%
  arrange(-Energy) %>%
  top_n(5) %>%
  filter(Energy == max(Energy, na.rm = TRUE)) %>%
  pull(Track.Name)
  
  
  
Billie_most_popular <- best_50_2019 %>%
  filter(str_detect(Artist.Name, "Billie Eilish")) %>%
  filter(Popularity == max(Popularity, na.rm = TRUE)) %>%
  pull(Popularity)
  
  
rm(max_total_set_artist)
  
  
most_top50_songs_artist <- tail(names(sort(table(best_50_2019$Artist.Name))), 1)

rm(most_top50_song)




  
library("stringr")




