library (magick)

pikachu_running <- image_read("https://media.tenor.com/d0GeOMz6_HwAAAAC/pikachu.gif")%>%
  image_scale(500)%>%
  image_transparent("#FFFFFF", fuzz = 10)

one <- image_negate(pikachu_running)

pikachu_hunting <- image_flop(one)


background1 <- image_blank(width = 500, height = 500, color = "#000000") %>%
  image_annotate(text = "me running from", font = "Impact", size = 50, gravity = "north", color = "#FFFFFF")%>%
  image_annotate(text = "my problems", font="Impact", size = 50, gravity = "south", color = "#FFFFFF")

background2 <- image_blank(width = 500, height = 500, color = "white") %>%
  image_annotate(text = "my problems running", font = "Impact", size = 50, gravity = "north", color = "black")%>%
  image_annotate(text = "after me", font="Impact", size = 50, gravity = "south", color = "black")

frame1 <- image_composite(background1, pikachu_running, gravity = "center")


frame2 <- image_composite(background2, pikachu_hunting, gravity = "center")


frames <- c(frame1, frame1, frame2, frame2)

animate <- image_animate(frames, fps = 20, optimize = TRUE)


image_write(animate, "pikachu_problems.gif")

