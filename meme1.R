library(magick)

#pikachu pictures yay !!
sad_pikachu <- image_read("https://pbs.twimg.com/media/FlrmYWOaYAIGe5O.jpg") %>%
  image_scale(200)

happy_pikachu <- image_read("https://pbs.twimg.com/media/Faj6coSUcAEdHUQ.jpg") %>%
  image_scale(200)

no_pikachu <- image_read("nooo.jpg")%>%
  image_scale(200)

yes_pikachu <- image_read("yass.jpg")%>%
  image_scale(200)

frame1 <- image_blank (width = 200, height = 200, color = "#000000") %>%
  image_annotate(text = "when the assignment
hits too hard", font = "Impact", size = 20, gravity = "center", color = "white")


frame2 <- image_blank (width = 200, height = 200, color = "#000000") %>%
  image_annotate(text = "when you ignore 
the assignment", font = "Impact", size = 20, gravity = "center", color = "white")

frame3 <- image_blank (width = 200, height = 200, color = "#000000") %>%
  image_annotate(text = "when the assignment
ignores you", font = "Impact", size = 20, gravity = "center", color = "white")

frame4 <- image_blank (width = 200, height = 200, color = "#000000") %>%
  image_annotate(text = "when 
no assignment", font = "Impact", size = 20, gravity = "center", color = "white")


row1 <- c(sad_pikachu, frame1) %>%
  image_append()

row2 <- c(happy_pikachu, frame2) %>%
  image_append()

row3 <- c(no_pikachu, frame3)%>%
  image_append()

row4 <- image_append(c(yes_pikachu, frame4))

pikachu_meme <- c(row1, row2, row3, row4) %>%
  image_append (stack = TRUE)

image_write(pikachu_meme, "pikachumeme.png")

