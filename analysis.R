




best_50_2019 <- read.csv("data/top50.csv", stringsAsFactors = FALSE)

# These were the top 50 tracks in spotify from 2019





top_3_popularity <- best_50_2019 %>%
  arrange(-Popularity) %>%
  top_n(3)


pop_genre <- best_50_2019 %>% 
  filter(Genre == "pop") 


max_energy_poptrack <- best_50_2019 %>%
  arrange(-Energy) %>%
  top_n(5) %>%
  filter(Energy == max(Energy, na.rm = TRUE)) %>%
  pull(Track.Name)

  
  
  
Billie_most_popular_num <- best_50_2019 %>%
  filter(str_detect(Artist.Name, "Billie Eilish")) %>%
  filter(Popularity == max(Popularity, na.rm = TRUE)) %>%
  pull(Popularity)

most_favorite_artist <- best_50_2019 %>%
  filter(Artist.Name == "Lil Tecca") %>%
  pull(Artist.Name)


favorite_track <- best_50_2019$Track.Name[best_50_2019$Track.Name == "Ransom"]
 


  
most_top50_songs_artist <- tail(names(sort(table(best_50_2019$Artist.Name))), 1)

library("ggplot2")



